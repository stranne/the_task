import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_current_state.dart';
import 'package:the_task/models/task_state.dart';
import 'package:the_task/objectbox.g.dart';
import 'package:the_task/services/store_service.dart';

class TaskCurrentService with ListenableServiceMixin {
  Store get _store => locator<StoreService>().store;

  Future<void> init() async {
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
    assert(state != TaskCurrentState.none);

    final query =
        _store.box<Task>().query(Task_.stateId.lessOrEqual(3)).build();
    final task = await query.findUniqueAsync();

    return task;
  }

  Future<Task> getTaskAsync() async {
    final task = await getTaskOrNullAsync();

    if (task == null) {
      throw Exception(
          'Tried to find current task in store but could not find one.');
    }

    return task;
  }

  Future<void> create() async {
    state = TaskCurrentState.creating;

    await Future.delayed(const Duration(seconds: 1));

    // TODO generate task
    final task = Task(
      stateId: 1,
      title: 'Task created at ${DateTime.now()}',
    );
    await _store.box<Task>().putAsync(task);
    state = TaskCurrentState.waitingForApproval;
  }

  Future<void> skip() async {
    assert(state == TaskCurrentState.waitingForApproval);

    _updateTaskState(TaskState.skipped);

    await create();
  }

  Future<void> accept() async {
    assert(state == TaskCurrentState.waitingForApproval);

    _updateTaskState(TaskState.inProgress);

    state = TaskCurrentState.active;
  }

  Future<void> abandon() async {
    assert(state == TaskCurrentState.active);

    _updateTaskState(TaskState.abandoned);

    await create();
  }

  Future<void> complete() async {
    assert(state == TaskCurrentState.active);

    _updateTaskState(TaskState.completed);

    await create();
  }

  Future<void> _updateTaskState(
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
