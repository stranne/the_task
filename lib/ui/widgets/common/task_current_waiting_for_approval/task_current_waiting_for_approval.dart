import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/ui/widgets/common/task_current_options/task_current_options.dart';
import 'package:the_task/ui/widgets/common/task_item/task_item.dart';

import 'task_current_waiting_for_approval_model.dart';

class TaskCurrentWaitingForApproval
    extends StackedView<TaskCurrentWaitingForApprovalModel> {
  final Task task;

  const TaskCurrentWaitingForApproval({
    super.key,
    required this.task,
  });

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentWaitingForApprovalModel viewModel,
    Widget? child,
  ) {
    return TaskCurrentOptions(
      options: [
        ElevatedButton(
          onPressed: viewModel.acceptAsync,
          child: const Text('Accept'),
        ),
        ElevatedButton(
          onPressed: viewModel.skipAsync,
          child: const Text('Skip'),
        ),
      ],
      child: TaskItem(task: task),
    );
  }

  @override
  TaskCurrentWaitingForApprovalModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentWaitingForApprovalModel();
}
