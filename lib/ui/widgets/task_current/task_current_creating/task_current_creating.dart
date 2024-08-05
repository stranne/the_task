import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/common/ui_helpers.dart';
import 'package:the_task/ui/widgets/common/loading_indicator_delayed/loading_indicator_delayed.dart';

import 'task_current_creating_model.dart';

class TaskCurrentCreating extends StackedView<TaskCurrentCreatingModel> {
  const TaskCurrentCreating({super.key});

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentCreatingModel viewModel,
    Widget? child,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LoadingIndicatorDelayed(),
        verticalSpaceMedium,
        Text(
          'Creating a task for you',
          style: emptyContentTextStyle,
        ),
      ],
    );
  }

  @override
  TaskCurrentCreatingModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentCreatingModel();
}
