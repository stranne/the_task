import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/app/app.router.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/services/task_state_service.dart';

class ProgressTaskListItemModel extends BaseViewModel {
  final _taskStateService = locator<TaskStateService>();

  String getSubtitle(Task task) {
    final buffer = StringBuffer();

    final goal = task.goal.target;
    if (goal != null) {
      buffer.writeln(goal.title);
    }

    buffer.write(_taskStateService.toText(task.state));

    return buffer.toString();
  }

  Future<void> navigateToTaskAsync(Task task) async =>
      await locator<NavigationService>().navigateTo(
        Routes.taskItemView,
        arguments: TaskItemViewArguments(task: task),
      );
}
