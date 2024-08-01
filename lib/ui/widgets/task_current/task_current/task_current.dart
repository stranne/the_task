import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_current_state.dart';
import 'package:the_task/ui/widgets/common/loading_indicator_delayed/loading_indicator_delayed.dart';
import 'package:the_task/ui/widgets/task_current/task_current_active/task_current_active.dart';
import 'package:the_task/ui/widgets/task_current/task_current_creating/task_current_creating.dart';
import 'package:the_task/ui/widgets/task_current/task_current_creating_failed/task_current_creating_failed.dart';
import 'package:the_task/ui/widgets/task_current/task_current_none/task_current_none.dart';
import 'package:the_task/ui/widgets/task_current/task_current_waiting_for_approval/task_current_waiting_for_approval.dart';

import 'task_current_model.dart';

class TaskCurrent extends StackedView<TaskCurrentModel> {
  const TaskCurrent({super.key});

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: _buildTaskCurrentState(viewModel),
    );
  }

  @override
  TaskCurrentModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentModel();

  Widget _buildTaskCurrentState(TaskCurrentModel viewModel) {
    switch (viewModel.state) {
      case TaskCurrentState.none:
        return const TaskCurrentNone();
      case TaskCurrentState.creating:
        return const TaskCurrentCreating();
      case TaskCurrentState.creatingFailed:
        return const TaskCurrentCreatingFailed();
      case TaskCurrentState.waitingForApproval:
        return _buildWithTask(
          viewModel,
          (task) => TaskCurrentWaitingForApproval(
            task: task,
          ),
        );
      case TaskCurrentState.active:
        return _buildWithTask(
          viewModel,
          (task) => TaskCurrentActive(
            task: task,
          ),
        );
    }
  }

  Widget _buildWithTask(
    TaskCurrentModel viewModel,
    Widget Function(Task) builder,
  ) {
    return FutureBuilder(
        future: viewModel.getTaskAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return builder(snapshot.data as Task);
          } else {
            return const Center(
              child: LoadingIndicatorDelayed(),
            );
          }
        });
  }
}
