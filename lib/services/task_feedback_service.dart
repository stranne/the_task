import 'package:the_task/app/app.locator.dart';
import 'package:the_task/app/app.logger.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_feedback.dart';
import 'package:the_task/services/task_service.dart';

class TaskFeedbackService {
  final _logger = getLogger('TaskFeedbackService');

  Future<void> saveAsync(TaskFeedback taskFeedback, Task task) async {
    _logger.i('Saving task feedback: ${taskFeedback.typeIds.join(', ')} '
        '${taskFeedback.comment}'
        ', for ${task.title}');
    task.feedback.target = taskFeedback;
    await locator<TaskService>().putAsync(task);
  }
}
