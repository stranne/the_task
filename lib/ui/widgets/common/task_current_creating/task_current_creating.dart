import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'task_current_creating_model.dart';

class TaskCurrentCreating extends StackedView<TaskCurrentCreatingModel> {
  const TaskCurrentCreating({super.key});

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentCreatingModel viewModel,
    Widget? child,
  ) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  TaskCurrentCreatingModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentCreatingModel();
}
