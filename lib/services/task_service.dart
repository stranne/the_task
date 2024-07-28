import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_state.dart';
import 'package:the_task/objectbox.g.dart';
import 'package:the_task/services/store_service.dart';
import 'package:the_task/services/task_state_service.dart';

class TaskService {
  Store get _store => locator<StoreService>().store;

  Future<List<Task>> getAllAsync() => _store.box<Task>().getAllAsync();

  Future<List<Task>> get20LatestAsync() => (_store
          .box<Task>()
          .query()
          .order(Task_.id, flags: Order.descending)
          .build()
        ..limit = 20)
      .findAsync();

  int totalSkippedTasks() => _countStatus(TaskState.skipped);

  int totalAbandonedTasks() => _countStatus(TaskState.abandoned);

  int totalCompletedTasks() => _countStatus(TaskState.completed);

  int _countStatus(TaskState state) => _store
      .box<Task>()
      .query(Task_.stateId.equals(TaskStateService.mappings[state]!))
      .build()
      .count();
}
