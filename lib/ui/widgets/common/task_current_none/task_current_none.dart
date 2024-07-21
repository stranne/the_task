import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/common/ui_helpers.dart';

import 'task_current_none_model.dart';

class TaskCurrentNone extends StackedView<TaskCurrentNoneModel> {
  const TaskCurrentNone({super.key});

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentNoneModel viewModel,
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
          const Text('No current task'),
          verticalSpaceMedium,
          ElevatedButton(
            onPressed: viewModel.createTaskAsync,
            child: const Text('Create Task'),
          ),
        ],
      ),
    );
  }

  @override
  TaskCurrentNoneModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentNoneModel();
}
