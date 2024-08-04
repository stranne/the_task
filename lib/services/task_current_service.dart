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

  late final ReactiveValue<Task?> _task;
  Task? get task => _task.value;

  late final ReactiveValue<TaskCurrentState> _state;
  TaskCurrentState get state => _state.value;

  @override
  Future<void> init() async {
    final task = await _taskService.getActiveOrNullAsync();
    _task = ReactiveValue<Task?>(task);
    listenToReactiveValues([_task]);

    TaskCurrentState state;
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
    _state = ReactiveValue<TaskCurrentState>(state);
  }

  Future<void> createAsync() async {
    _state.value = TaskCurrentState.creating;
    try {
      final task = await locator<TaskCreateService>().createAsync();
      await _taskService.putAsync(task);
      _task.value = task;
      _state.value = TaskCurrentState.waitingForApproval;
    } catch (e) {
      _state.value = TaskCurrentState.creatingFailed;
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

    _state.value = TaskCurrentState.active;
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
    final task = _task.value!;
    if (newState != TaskState.inProgress) {
      task.closed = DateTime.now().toUtc();

      // Make sure that we don't have a state that could result in displaying
      // a task when no task can be viewed after changing it's state
      _state.value = TaskCurrentState.creating;
      _task.value = null;
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
