import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/services/task_service.dart';

class ProgressTaskListModel extends ReactiveViewModel {
  final _taskService = locator<TaskService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [_taskService];

  List<Task> get tasks =>
      _taskService.tasks..sort((a, b) => a.created.compareTo(b.created) * -1);
}
