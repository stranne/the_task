import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/services/task_current_service.dart';

class TaskCurrentActiveModel extends BaseViewModel {
  final _taskCurrentService = locator<TaskCurrentService>();

  Future<void> completeAsync() async {
    _taskCurrentService.completeAsync();
  }

  Future<void> abandonAsync() async {
    _taskCurrentService.abandonAsync();
  }
}
