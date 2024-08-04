import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task_current_state.dart';
import 'package:the_task/services/task_current_service.dart';

class TaskCurrentOptionsDelayedService with ListenableServiceMixin {
  final _taskCurrentService = locator<TaskCurrentService>();

  late final ReactiveValue<bool> _shouldDelay;
  bool get shouldDelay => _shouldDelay.value;
  int? _taskId;

  TaskCurrentOptionsDelayedService() {
    final task = _taskCurrentService.task;
    _taskId = task?.id;

    final shouldDelay =
        _taskCurrentService.state == TaskCurrentState.waitingForApproval;
    _shouldDelay = ReactiveValue<bool>(shouldDelay);
    listenToReactiveValues([_shouldDelay]);

    _taskCurrentService.addListener(() {
      final taskIdNew = _taskCurrentService.task?.id;
      if (taskIdNew != null && _taskId != taskIdNew) {
        _taskId = taskIdNew;
        _shouldDelay.value =
            _taskCurrentService.state == TaskCurrentState.waitingForApproval;
      }
    });
  }

  void delayDone() => _shouldDelay.value = false;
}
