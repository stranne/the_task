import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/services/task_current_service.dart';

class TaskCurrentActiveModel extends BaseViewModel {
  final taskCurrentService = locator<TaskCurrentService>();

  Task get task => taskCurrentService.task;

  Future<void> completeAsync() async {
    taskCurrentService.complete();
  }

  Future<void> abandonAsync() async {
    taskCurrentService.abandon();
  }
}
