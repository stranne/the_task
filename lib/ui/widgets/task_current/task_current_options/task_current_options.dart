import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/widgets/task_current/task_current_options_delayed/task_current_options_delayed.dart';
import 'package:the_task/ui/widgets/task_current/task_current_options_limit_reached/task_current_options_limit_reached.dart';

import 'task_current_options_model.dart';

class TaskCurrentOptions extends StackedView<TaskCurrentOptionsModel> {
  final List<Widget> options;

  const TaskCurrentOptions({
    super.key,
    required this.options,
  });

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentOptionsModel viewModel,
    Widget? child,
  ) {
    if (viewModel.hasReachedLimitForToday) {
      return const TaskCurrentOptionsLimitReached();
    }

    return TaskCurrentOptionsDelayed(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: options,
        ),
      ),
    );
  }

  @override
  TaskCurrentOptionsModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentOptionsModel();
}
