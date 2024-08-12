import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task_current_state.dart';
import 'package:the_task/services/task_current_service.dart';

class TaskCurrentOptionsDelayedService with ListenableServiceMixin {
  static const Duration _delayDuration = Duration(seconds: 10);

  final _taskCurrentService = locator<TaskCurrentService>();

  final ReactiveValue<DateTime?> _shouldDelay = ReactiveValue<DateTime?>(null);
  DateTime? get shouldDelayTo => _shouldDelay.value;
  int? _taskId;

  TaskCurrentOptionsDelayedService() {
    final task = _taskCurrentService.task;
    _taskId = task?.id;

    listenToReactiveValues([_shouldDelay]);

    _taskCurrentService.addListener(() {
      final taskIdNew = _taskCurrentService.task?.id;
      if (taskIdNew != null && _taskId != taskIdNew) {
        _taskId = taskIdNew;

        if (_taskCurrentService.state == TaskCurrentState.waitingForApproval) {
          _shouldDelay.value = DateTime.now().add(_delayDuration);
        } else {
          _shouldDelay.value = null;
        }
      }
    });
  }
}
