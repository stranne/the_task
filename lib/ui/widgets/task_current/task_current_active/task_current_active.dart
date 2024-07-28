import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/ui/widgets/task_current/task_current_options/task_current_options.dart';
import 'package:the_task/ui/widgets/common/task_item/task_item.dart';

import 'task_current_active_model.dart';

class TaskCurrentActive extends StackedView<TaskCurrentActiveModel> {
  final Task task;

  const TaskCurrentActive({
    super.key,
    required this.task,
  });

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentActiveModel viewModel,
    Widget? child,
  ) {
    return TaskCurrentOptions(
      options: [
        ElevatedButton(
          onPressed: () => viewModel.completeAsync(task),
          child: const Text('Complete'),
        ),
        ElevatedButton(
          onPressed: () => viewModel.abandonAsync(task),
          child: const Text('Abandon'),
        ),
      ],
      child: TaskItem(task: task),
    );
  }

  @override
  TaskCurrentActiveModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentActiveModel();
}
