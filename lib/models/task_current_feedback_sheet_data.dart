import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_feedback_type.dart';

class TaskCurrentFeedbackSheetData {
  final Task task;
  final List<TaskFeedbackType> feedbackTypes;

  TaskCurrentFeedbackSheetData({
    required this.task,
    required this.feedbackTypes,
  });
}
