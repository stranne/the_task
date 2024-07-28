import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/services/task_service.dart';

class ProgressTaskListModel extends FutureViewModel<List<Task>> {
  @override
  Future<List<Task>> futureToRun() async =>
      await locator<TaskService>().getAllAsync()
        ..sort((a, b) => a.id.compareTo(-b.id));
}
