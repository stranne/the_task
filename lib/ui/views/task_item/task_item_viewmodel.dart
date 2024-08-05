import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/services/task_service.dart';

class TaskItemViewModel extends BaseViewModel {
  Future<void> deleteAsync(Task task) async =>
      await locator<TaskService>().deleteAsync(task);
}
