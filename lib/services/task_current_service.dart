import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_current_state.dart';
import 'package:the_task/models/task_state.dart';
import 'package:the_task/objectbox.g.dart';
import 'package:the_task/services/store_service.dart';
import 'package:the_task/services/task_create_service.dart';
import 'package:the_task/services/task_state_service.dart';

class TaskCurrentService with ListenableServiceMixin {
  static final _waitingForApprovalId =
      TaskStateService.mappings[TaskState.waitingForApproval]!;
  static final _inProgressId = TaskStateService.mappings[TaskState.inProgress]!;

  Store get _store => locator<StoreService>().store;

  Future<void> initAsync() async {
    final task = await getTaskOrNullAsync();
    switch (task?.state) {
      case TaskState.waitingForApproval:
        state = TaskCurrentState.waitingForApproval;
        break;
      case TaskState.inProgress:
        state = TaskCurrentState.active;
        break;
      default:
        state = TaskCurrentState.none;
    }
  }

  TaskCurrentState _state = TaskCurrentState.none;
  set state(TaskCurrentState value) {
    final shouldNotify = value != _state;
    _state = value;
    if (shouldNotify) {
      notifyListeners();
    }
  }

  TaskCurrentState get state => _state;
  Future<Task?> getTaskOrNullAsync() async {
    final query = _store
        .box<Task>()
        .query(Task_.stateId
            .equals(_waitingForApprovalId)
            .or(Task_.stateId.equals(_inProgressId)))
        .build();
    return await query.findUniqueAsync();
  }

  Future<Task> getTaskAsync() async {
    final task = await getTaskOrNullAsync();

    if (task == null) {
      throw Exception(
          'Tried to find current task in store but could not find one.');
    }

    return task;
  }

  Future<void> createAsync() async {
    state = TaskCurrentState.creating;
    try {
      final task = await locator<TaskCreateService>().createAsync();

      await _store.box<Task>().putAsync(task);
      state = TaskCurrentState.waitingForApproval;
    } catch (e) {
      state = TaskCurrentState.creatingFailed;
    }
  }

  Future<void> skipAsync() async {
    assert(state == TaskCurrentState.waitingForApproval);

    await _updateTaskStateAsync(TaskState.skipped);

    await createAsync();
  }

  Future<void> acceptAsync() async {
    assert(state == TaskCurrentState.waitingForApproval);

    await _updateTaskStateAsync(TaskState.inProgress);

    state = TaskCurrentState.active;
  }

  Future<void> abandonAsync() async {
    assert(state == TaskCurrentState.active);

    await _updateTaskStateAsync(TaskState.abandoned);

    await createAsync();
  }

  Future<void> completeAsync() async {
    assert(state == TaskCurrentState.active);

    await _updateTaskStateAsync(TaskState.completed);

    await createAsync();
  }

  Future<void> _updateTaskStateAsync(
    TaskState newState,
  ) async {
    if (newState != TaskState.inProgress) {
      // Make sure that we don't have a state that could result in displaying
      // a task when no task can be viewed after changing it's state
      state = TaskCurrentState.creating;
    }

    final task = await getTaskAsync();
    task.state = newState;
    await _store.box<Task>().putAsync(task);
  }
}
