import 'package:the_task/models/task_state.dart';

class TaskStateService {
  static const mappings = {
    TaskState.waitingForApproval: 1,
    TaskState.skipped: 2,
    TaskState.inProgress: 3,
    TaskState.completed: 4,
    TaskState.abandoned: 5,
  };

  int toInt(TaskState state) => mappings[state]!;

  TaskState fromInt(int stateId) =>
      mappings.entries.singleWhere((entry) => entry.value == stateId).key;

  String toText(TaskState state) {
    switch (state) {
      case TaskState.waitingForApproval:
        return 'Waiting for approval';
      case TaskState.skipped:
        return 'Skipped';
      case TaskState.inProgress:
        return 'In progress';
      case TaskState.completed:
        return 'Completed';
      case TaskState.abandoned:
        return 'Abandoned';
    }
  }
}
