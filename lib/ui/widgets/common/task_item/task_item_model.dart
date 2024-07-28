import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task_feedback_type.dart';
import 'package:the_task/services/task_feedback_type_service.dart';

class TaskItemModel extends BaseViewModel {
  final _taskFeedbackTypeService = locator<TaskFeedbackTypeService>();

  String getFeedbackTypeString(TaskFeedbackType type) =>
      _taskFeedbackTypeService.toText(type);
}
