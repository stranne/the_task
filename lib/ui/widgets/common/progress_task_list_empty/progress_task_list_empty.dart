import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'progress_task_list_empty_model.dart';

class ProgressTaskListEmpty extends StackedView<ProgressTaskListEmptyModel> {
  const ProgressTaskListEmpty({super.key});

  @override
  Widget builder(
    BuildContext context,
    ProgressTaskListEmptyModel viewModel,
    Widget? child,
  ) {
    return const Center(
      child: Text(
        'No tasks found',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  ProgressTaskListEmptyModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProgressTaskListEmptyModel();
}
