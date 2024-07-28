import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
            child: this.child,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: options,
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
