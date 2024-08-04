import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/app/app.bottomsheets.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_current_feedback_sheet_data.dart';
import 'package:the_task/models/task_current_state.dart';
import 'package:the_task/models/task_feedback_type.dart';
import 'package:the_task/models/task_state.dart';
import 'package:the_task/services/task_create_service.dart';
import 'package:the_task/services/task_service.dart';

class TaskCurrentService
    with ListenableServiceMixin
    implements InitializableDependency {
  final _taskService = locator<TaskService>();

  @override
  Future<void> init() async {
    final task = await getTaskOrNullAsync();
    switch (task?.state) {
      case TaskState.waitingForApproval:
        state = TaskCurrentState.waitingForApproval;
        break;
      case TaskState.inProgress:
        state = TaskCurrentState.active;
        break;
      default:
        state = TaskCurrentState.none;
    }
  }

  TaskCurrentState _state = TaskCurrentState.none;
  set state(TaskCurrentState value) {
    final shouldNotify = value != _state;
    _state = value;
    if (shouldNotify) {
      notifyListeners();
    }
  }

  TaskCurrentState get state => _state;
  Future<Task?> getTaskOrNullAsync() async =>
      await _taskService.getActiveOrNullAsync();

  Future<Task> getTaskAsync() async {
    final task = await getTaskOrNullAsync();

    if (task == null) {
      throw Exception(
          'Tried to find current task in store but could not find one.');
    }

    return task;
  }

  Future<void> createAsync() async {
    state = TaskCurrentState.creating;
    try {
      final task = await locator<TaskCreateService>().createAsync();

      await _taskService.putAsync(task);
      state = TaskCurrentState.waitingForApproval;
    } catch (e) {
      state = TaskCurrentState.creatingFailed;
    }
  }

  Future<void> skipAsync(Task task) async {
    assert(state == TaskCurrentState.waitingForApproval);

    await _askForFeedback(task, [
      TaskFeedbackType.notRelevant,
      TaskFeedbackType.tooBasic,
      TaskFeedbackType.alreadyDone,
    ]);

    await _updateTaskStateAsync(TaskState.skipped);

    await createAsync();
  }

  Future<void> acceptAsync() async {
    assert(state == TaskCurrentState.waitingForApproval);

    await _updateTaskStateAsync(TaskState.inProgress);

    state = TaskCurrentState.active;
  }

  Future<void> abandonAsync(Task task) async {
    assert(state == TaskCurrentState.active);

    await _askForFeedback(
      task,
      [
        TaskFeedbackType.tooDificult,
        TaskFeedbackType.lackOfResources,
        TaskFeedbackType.unclearInstructions,
      ],
    );

    await _updateTaskStateAsync(TaskState.abandoned);

    await createAsync();
  }

  Future<void> completeAsync(Task task) async {
    assert(state == TaskCurrentState.active);

    await _askForFeedback(task, [
      TaskFeedbackType.challangingButDoable,
      TaskFeedbackType.clearInstructions,
      TaskFeedbackType.enjoyableTask,
    ]);

    await _updateTaskStateAsync(TaskState.completed);

    await createAsync();
  }

  Future<void> _updateTaskStateAsync(
    TaskState newState,
  ) async {
    final task = await getTaskAsync();

    if (newState != TaskState.inProgress) {
      task.closed = DateTime.now().toUtc();

      // Make sure that we don't have a state that could result in displaying
      // a task when no task can be viewed after changing it's state
      state = TaskCurrentState.creating;
    }

    task.state = newState;
    await _taskService.putAsync(task);
  }

  Future<void> _askForFeedback(
    Task task,
    List<TaskFeedbackType> feedbackTypes,
  ) async =>
      await locator<BottomSheetService>().showCustomSheet(
        variant: BottomSheetType.taskCurrentFeedback,
        data: TaskCurrentFeedbackSheetData(
          task: task,
          feedbackTypes: feedbackTypes,
        ),
      );
}
