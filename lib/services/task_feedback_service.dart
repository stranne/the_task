import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_feedback.dart';
import 'package:the_task/services/store_service.dart';

class TaskFeedbackService {
  final _store = locator<StoreService>().store;

  Future<void> saveAsync(TaskFeedback taskFeedback, Task task) async {
    task.feedback.target = taskFeedback;
    await _store.box<Task>().putAsync(task);
  }
}
