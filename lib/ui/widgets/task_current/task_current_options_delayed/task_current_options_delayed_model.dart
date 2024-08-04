import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/services/task_current_options_delayed_service.dart';

class TaskCurrentOptionsDelayedModel extends ReactiveViewModel {
  final _taskCurrentOptionsDelayedService =
      locator<TaskCurrentOptionsDelayedService>();

  @override
  List<ListenableServiceMixin> get listenableServices =>
      [_taskCurrentOptionsDelayedService];

  bool get shouldDelay => _taskCurrentOptionsDelayedService.shouldDelay;

  void done() => _taskCurrentOptionsDelayedService.delayDone();
}
