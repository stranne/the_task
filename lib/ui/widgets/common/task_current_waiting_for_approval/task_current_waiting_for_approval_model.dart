import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/services/task_current_service.dart';

class TaskCurrentWaitingForApprovalModel extends BaseViewModel {
  final taskCurrentService = locator<TaskCurrentService>();

  Future<void> acceptAsync() async {
    taskCurrentService.accept();
  }

  Future<void> skipAsync() async {
    taskCurrentService.skip();
  }
}
