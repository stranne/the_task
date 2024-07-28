import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/services/task_service.dart';

class ProgressTaskListModel extends BaseViewModel {
  List<Task> get tasks =>
      locator<TaskService>().getAll()..sort((a, b) => a.id.compareTo(-b.id));
}
