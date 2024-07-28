import 'package:the_task/models/task_feedback_type.dart';

class TaskFeedbackTypeService {
  static const mappings = {
    TaskFeedbackType.notRelevant: 1,
    TaskFeedbackType.tooBasic: 2,
    TaskFeedbackType.alreadyDone: 3,
    TaskFeedbackType.challangingButDoable: 4,
    TaskFeedbackType.clearInstructions: 5,
    TaskFeedbackType.enjoyableTask: 6,
    TaskFeedbackType.tooDificult: 7,
    TaskFeedbackType.lackOfResources: 8,
    TaskFeedbackType.unclearInstructions: 9,
  };

  int toInt(TaskFeedbackType type) => mappings[type]!;

  List<int> toInts(List<TaskFeedbackType> types) =>
      types.map((type) => toInt(type)).toList();

  TaskFeedbackType fromInt(int typeId) =>
      mappings.entries.singleWhere((entry) => entry.value == typeId).key;

  List<TaskFeedbackType> fromInts(List<int> typeIds) =>
      typeIds.map((typeId) => fromInt(typeId)).toList();

  String toText(TaskFeedbackType type) {
    switch (type) {
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
    }
  }
}
