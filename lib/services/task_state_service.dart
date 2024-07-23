import 'package:the_task/models/task_state.dart';

class TaskStateService {
  static const _mappings = {
    TaskState.waitingForApproval: 1,
    TaskState.skipped: 2,
    TaskState.inProgress: 3,
    TaskState.completed: 4,
    TaskState.abandoned: 5,
  };

  int toInt(TaskState state) => _mappings[state]!;

  TaskState fromInt(int stateId) =>
      _mappings.entries.singleWhere((entry) => entry.value == stateId).key;
}
