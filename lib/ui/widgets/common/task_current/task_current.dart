import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'task_current_model.dart';

class TaskCurrent extends StackedView<TaskCurrentModel> {
  const TaskCurrent({super.key});

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentModel viewModel,
    Widget? child,
  ) {
    return const Center(
      child: Text(
        'Task Current',
      ),
    );
  }

  @override
  TaskCurrentModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentModel();
}
