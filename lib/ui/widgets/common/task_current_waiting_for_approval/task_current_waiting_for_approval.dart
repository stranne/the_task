import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/ui/common/ui_helpers.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(task.title),
          verticalSpaceMedium,
          ElevatedButton(
            onPressed: viewModel.acceptAsync,
            child: const Text('Accept'),
          ),
          verticalSpaceSmall,
          ElevatedButton(
            onPressed: viewModel.skipAsync,
            child: const Text('Skip'),
          ),
        ],
      ),
    );
  }

  @override
  TaskCurrentWaitingForApprovalModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentWaitingForApprovalModel();
}
