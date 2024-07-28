import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/app/app.router.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_state.dart';
import 'package:the_task/services/task_state_service.dart';

class ProgressTaskListItemModel extends BaseViewModel {
  final _taskStateService = locator<TaskStateService>();

  String getTaskDisplayText(TaskState state) => _taskStateService.toText(state);

  Future<void> navigateToTaskAsync(Task task) async =>
      await locator<NavigationService>().navigateTo(
        Routes.taskItemView,
        arguments: TaskItemViewArguments(task: task),
      );
}
