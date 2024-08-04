import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'task_current_countdown_model.dart';

class TaskCurrentCountdown extends StackedView<TaskCurrentCountdownModel> {
  const TaskCurrentCountdown({super.key});

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentCountdownModel viewModel,
    Widget? child,
  ) {
    final progress = viewModel.progress;
    final color = getColor(progress);

    return LinearProgressIndicator(
      value: progress,
      valueColor: AlwaysStoppedAnimation<Color>(color),
      backgroundColor: color.withAlpha(50),
    );
  }

  @override
  TaskCurrentCountdownModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentCountdownModel();

  Color getColor(double progress) {
    switch (progress) {
      case >= 0.7 && < 1:
        return Colors.yellow;
      case 1:
        return Colors.red;
      default:
        return Colors.green;
    }
  }
}
