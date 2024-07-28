import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/services/task_current_service.dart';

class TaskCurrentActiveModel extends BaseViewModel {
  final _taskCurrentService = locator<TaskCurrentService>();

  Future<void> completeAsync(Task task) async {
    _taskCurrentService.completeAsync(task);
  }

  Future<void> abandonAsync(Task task) async {
    _taskCurrentService.abandonAsync(task);
  }
}
