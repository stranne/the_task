import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/common/ui_helpers.dart';

import 'task_current_creating_failed_model.dart';

class TaskCurrentCreatingFailed
    extends StackedView<TaskCurrentCreatingFailedModel> {
  const TaskCurrentCreatingFailed({super.key});

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentCreatingFailedModel viewModel,
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
          const Text('Something went wrong while creating the task'),
          verticalSpaceMedium,
          ElevatedButton(
            onPressed: viewModel.retryCreateTaskAsync,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  @override
  TaskCurrentCreatingFailedModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentCreatingFailedModel();
}
