import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_state.dart';
import 'package:the_task/objectbox.g.dart';
import 'package:the_task/services/store_service.dart';
import 'package:the_task/services/task_state_service.dart';

class TaskService with ListenableServiceMixin {
  static final _waitingForApprovalId =
      TaskStateService.mappings[TaskState.waitingForApproval]!;
  static final _inProgressId = TaskStateService.mappings[TaskState.inProgress]!;

  Box<Task> get _box => locator<StoreService>().getBox<Task>();

  Future<List<Task>> getAllAsync() => _box.getAllAsync();

  Future<Task?> getActiveOrNullAsync() async {
    final query = _box
        .query(Task_.stateId
            .equals(_waitingForApprovalId)
            .or(Task_.stateId.equals(_inProgressId)))
        .build();
    return await query.findUniqueAsync();
  }

  Future<List<Task>> get20LatestAsync() =>
      (_box.query().order(Task_.id, flags: Order.descending).build()
            ..limit = 20)
          .findAsync();

  Future<void> putAsync(Task task) async {
    await _box.putAsync(task);
    notifyListeners();
  }

  int get totalSkippedTasks => _countStatus(TaskState.skipped);

  int get totalAbandonedTasks => _countStatus(TaskState.abandoned);

  int get totalCompletedTasks => _countStatus(TaskState.completed);

  int _countStatus(TaskState state) => _box
      .query(Task_.stateId.equals(TaskStateService.mappings[state]!))
      .build()
      .count();

  int get todaysNumberOfTasks => _box
      .query(Task_.created.between(
        _getStartOfdayInMillisecondsSinceEpoch(DateTime.now()),
        _getStartOfdayInMillisecondsSinceEpoch(
            DateTime.now().add(const Duration(days: 1))),
      ))
      .build()
      .count();

  int _getStartOfdayInMillisecondsSinceEpoch(DateTime dateTime) =>
      DateTime(dateTime.year, dateTime.month, dateTime.day)
          .millisecondsSinceEpoch;
}
