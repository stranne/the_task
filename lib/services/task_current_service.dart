import 'package:objectbox/objectbox.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_current_state.dart';
import 'package:the_task/services/store_service.dart';

class TaskCurrentService with ListenableServiceMixin {
  Store get _store => locator<StoreService>().store;

  // TODO set value based on store
  TaskCurrentState _state = TaskCurrentState.none;
  set state(TaskCurrentState value) {
    _state = value;
    notifyListeners();
  }

  TaskCurrentState get state => _state;
  Task get task {
    assert(state != TaskCurrentState.none);

    // TODO get task from store
    return Task(title: 'Task title');
  }

  Future<void> create() async {
    state = TaskCurrentState.creating;

    await Future.delayed(const Duration(seconds: 1));

    state = TaskCurrentState.waitingForApproval;
  }

  Future<void> skip() async {
    assert(state == TaskCurrentState.waitingForApproval);

    // TODO skip task
    await create();
  }

  Future<void> accept() async {
    assert(state == TaskCurrentState.waitingForApproval);

    // TODO accept task
    state = TaskCurrentState.active;
  }

  Future<void> abandon() async {
    assert(state == TaskCurrentState.active);

    // TODO abandon task
    await create();
  }

  Future<void> complete() async {
    assert(state == TaskCurrentState.active);

    // TODO complete task
    await create();
  }
}
