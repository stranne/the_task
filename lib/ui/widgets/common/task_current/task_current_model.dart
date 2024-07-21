import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_current_state.dart';
import 'package:the_task/services/task_current_service.dart';

class TaskCurrentModel extends ReactiveViewModel {
  final _taskCurrentService = locator<TaskCurrentService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [_taskCurrentService];

  TaskCurrentState get state => _taskCurrentService.state;
  Task? get task => _taskCurrentService.task;
}
