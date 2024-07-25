import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/services/task_current_service.dart';

class TaskCurrentWaitingForApprovalModel extends BaseViewModel {
  final _taskCurrentService = locator<TaskCurrentService>();

  Future<void> acceptAsync() async {
    _taskCurrentService.acceptAsync();
  }

  Future<void> skipAsync() async {
    _taskCurrentService.skipAsync();
  }
}
