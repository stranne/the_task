import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_feedback.dart';
import 'package:the_task/services/task_service.dart';

class TaskFeedbackService {
  Future<void> saveAsync(TaskFeedback taskFeedback, Task task) async {
    task.feedback.target = taskFeedback;
    await locator<TaskService>().putAsync(task);
  }
}
