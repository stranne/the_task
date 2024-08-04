import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/services/task_current_countdown_service.dart';
import 'package:the_task/services/task_current_service.dart';

class TaskCurrentOptionsModel extends ReactiveViewModel {
  final _taskCurrentService = locator<TaskCurrentService>();
  final _taskCurrentCountdownService = locator<TaskCurrentCountdownService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [
        _taskCurrentService,
        _taskCurrentCountdownService,
      ];

  bool get hasReachedLimitForToday =>
      _taskCurrentCountdownService.progress == 1;
}
