import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/widgets/task_current/task_current_countdown/task_current_countdown.dart';
import 'package:the_task/ui/widgets/task_current/task_current_countdown/task_current_countdown_model.dart';

import 'task_current_options_model.dart';

class TaskCurrentOptions extends StackedView<TaskCurrentOptionsModel> {
  final Widget child;
  final List<Widget> options;

  const TaskCurrentOptions({
    super.key,
    required this.child,
    required this.options,
  });

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentOptionsModel viewModel,
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
        const TaskCurrentCountdown(key: Key('TaskCurrentCountdown')),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: options,
          ),
        ),
      ],
    );
  }

  @override
  TaskCurrentOptionsModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentOptionsModel();
}
