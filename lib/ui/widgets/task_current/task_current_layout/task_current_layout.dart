import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/widgets/task_current/task_current_countdown/task_current_countdown.dart';
import 'package:the_task/ui/widgets/task_current/task_current_options/task_current_options.dart';

import 'task_current_layout_model.dart';

class TaskCurrentLayout extends StackedView<TaskCurrentLayoutModel> {
  final Widget child;
  final List<Widget> options;

  const TaskCurrentLayout({
    super.key,
    required this.child,
    required this.options,
  });

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentLayoutModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: this.child,
            ),
          ),
        ),
        const TaskCurrentCountdown(),
        TaskCurrentOptions(options: options),
      ],
    );
  }

  @override
  TaskCurrentLayoutModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentLayoutModel();
}
