import 'package:objectbox/objectbox.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task_state.dart';
import 'package:the_task/services/task_state_service.dart';

@Entity()
class Task {
  int id;
  // Objectbox can't handle enums, so we need to store the state as an int.
  int stateId;
  String title;

  TaskState get state => locator<TaskStateService>().fromInt(stateId);
  set state(TaskState value) =>
      stateId = locator<TaskStateService>().toInt(value);

  Task({
    this.id = 0,
    required this.stateId,
    required this.title,
  });
}
