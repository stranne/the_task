import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/services/task_current_options_delayed_service.dart';

class TaskCurrentOptionsDelayedModel extends ReactiveViewModel {
  final _taskCurrentOptionsDelayedService =
      locator<TaskCurrentOptionsDelayedService>();

  @override
  List<ListenableServiceMixin> get listenableServices =>
      [_taskCurrentOptionsDelayedService];

  DateTime? get shouldDelayTo =>
      _taskCurrentOptionsDelayedService.shouldDelayTo;

  (Duration delay, bool shouldDelay) getDuration(DateTime? shouldDelayTo) {
    final delay = shouldDelayTo?.difference(DateTime.now());

    return (delay == null || delay.inMilliseconds <= 0)
        ? (const Duration(microseconds: 1), false)
        : (delay, true);
  }
}
