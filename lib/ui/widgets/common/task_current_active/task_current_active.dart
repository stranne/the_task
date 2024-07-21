import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/common/ui_helpers.dart';

import 'task_current_active_model.dart';

class TaskCurrentActive extends StackedView<TaskCurrentActiveModel> {
  const TaskCurrentActive({super.key});

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentActiveModel viewModel,
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
          Text(viewModel.task.title),
          verticalSpaceMedium,
          ElevatedButton(
            onPressed: viewModel.completeAsync,
            child: const Text('Complete'),
          ),
          verticalSpaceSmall,
          ElevatedButton(
            onPressed: viewModel.abandonAsync,
            child: const Text('Abandon'),
          ),
        ],
      ),
    );
  }

  @override
  TaskCurrentActiveModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentActiveModel();
}
