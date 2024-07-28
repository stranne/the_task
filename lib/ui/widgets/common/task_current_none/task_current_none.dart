import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/common/ui_helpers.dart';
import 'package:the_task/ui/widgets/common/task_current_options/task_current_options.dart';
import 'package:the_task/ui/widgets/common/task_item/task_item.dart';

import 'task_current_none_model.dart';

class TaskCurrentNone extends StackedView<TaskCurrentNoneModel> {
  const TaskCurrentNone({super.key});

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentNoneModel viewModel,
    Widget? child,
  ) {
    return TaskCurrentOptions(
      options: [
        ElevatedButton(
          onPressed: viewModel.createTaskAsync,
          child: const Text('Create Task'),
        ),
      ],
      child: const Center(
        child: Text('No current task'),
      ),
    );
  }

  @override
  TaskCurrentNoneModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentNoneModel();
}
