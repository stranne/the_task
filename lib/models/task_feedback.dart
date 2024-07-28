import 'package:objectbox/objectbox.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task_feedback_type.dart';
import 'package:the_task/services/task_feedback_type_service.dart';

@Entity()
class TaskFeedback {
  int id;
  List<int> typeIds;
  String? comment;

  List<TaskFeedbackType> get types =>
      locator<TaskFeedbackTypeService>().fromInts(typeIds);
  set types(List<TaskFeedbackType> types) =>
      typeIds = locator<TaskFeedbackTypeService>().toInts(types);

  TaskFeedback({
    this.id = 0,
    required this.typeIds,
    this.comment,
  });
}
