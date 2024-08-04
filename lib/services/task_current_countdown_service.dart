import 'dart:math';
import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/services/task_service.dart';

class TaskCurrentCountdownService with ListenableServiceMixin {
  static const int _maxNumberOfTasksPerDay = 20;

  late ReactiveValue<double> _progress;

  double get progress => _progress.value;

  TaskCurrentCountdownService() {
    _progress = ReactiveValue(_getProgress());
    listenToReactiveValues([_progress]);

    locator<TaskService>().addListener(() => _progress.value = _getProgress());
  }

  double _getProgress() {
    final todaysNumberOfTasks = locator<TaskService>().todaysNumberOfTasks;
    return min(todaysNumberOfTasks / _maxNumberOfTasksPerDay, 1.0);
  }
}
