import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/services/task_current_countdown_service.dart';

class TaskCurrentCountdownModel extends ReactiveViewModel {
  final _taskCurrentCountdownService = locator<TaskCurrentCountdownService>();

  @override
  List<ListenableServiceMixin> get listenableServices =>
      [_taskCurrentCountdownService];

  double get progress => _taskCurrentCountdownService.progress;
}
