import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_feedback.dart';
import 'package:the_task/models/task_feedback_type.dart';
import 'package:the_task/services/task_feedback_service.dart';
import 'package:the_task/services/task_feedback_type_service.dart';
import 'package:the_task/ui/widgets/task_current/task_current_feedback_form/task_current_feedback_form.form.dart';

class TaskCurrentFeedbackFormModel extends FormViewModel {
  final List<TaskFeedbackType> _feedbackTypes = [];

  List<TaskFeedbackType> get feedbackTypes => _feedbackTypes;
  set feedbackTypes(List<TaskFeedbackType> feedback) => _feedbackTypes
    ..clear()
    ..addAll(feedback);

  bool getFeedbackType(TaskFeedbackType feedbackType) {
    return _feedbackTypes.contains(feedbackType);
  }

  void setFeedbackType(TaskFeedbackType feedbackType, bool? value) {
    if (value == true) {
      _feedbackTypes.add(feedbackType);
    } else {
      _feedbackTypes.remove(feedbackType);
    }

    notifyListeners();
  }

  String getFeedbackTypeDisplayText(TaskFeedbackType feedbackType) {
    switch (feedbackType) {
      case TaskFeedbackType.notRelevant:
        return 'Not relevant';
      case TaskFeedbackType.tooBasic:
        return 'Too basic';
      case TaskFeedbackType.alreadyDone:
        return 'Already done';

      case TaskFeedbackType.challangingButDoable:
        return 'Challanging but doable';
      case TaskFeedbackType.clearInstructions:
        return 'Clear instructions';
      case TaskFeedbackType.enjoyableTask:
        return 'Enjoyable task';

      case TaskFeedbackType.tooDificult:
        return 'Too dificult';
      case TaskFeedbackType.lackOfResources:
        return 'Lack of resources';
      case TaskFeedbackType.unclearInstructions:
        return 'Unclear instructions';

      default:
        return feedbackType.toString();
    }
  }

  Future<void> saveAsync(Task task) async {
    final typeIds = locator<TaskFeedbackTypeService>().toInts(_feedbackTypes);
    final comment = commentValue?.isNotEmpty == true ? commentValue : null;
    final taskFeedback = TaskFeedback(
      typeIds: typeIds,
      comment: comment,
    );

    await locator<TaskFeedbackService>().saveAsync(taskFeedback, task);
  }
}
