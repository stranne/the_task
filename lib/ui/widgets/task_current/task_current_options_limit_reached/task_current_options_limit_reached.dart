import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'task_current_options_limit_reached_model.dart';

class TaskCurrentOptionsLimitReached
    extends StackedView<TaskCurrentOptionsLimitReachedModel> {
  const TaskCurrentOptionsLimitReached({super.key});

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentOptionsLimitReachedModel viewModel,
    Widget? child,
  ) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          'Reached today task limit.\nCome back tomorrow.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  TaskCurrentOptionsLimitReachedModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentOptionsLimitReachedModel();
}
