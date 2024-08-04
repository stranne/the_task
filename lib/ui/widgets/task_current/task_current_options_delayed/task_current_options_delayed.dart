import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'task_current_options_delayed_model.dart';

class TaskCurrentOptionsDelayed
    extends StackedView<TaskCurrentOptionsDelayedModel> {
  final Widget child;

  const TaskCurrentOptionsDelayed({
    super.key,
    required this.child,
  });

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentOptionsDelayedModel viewModel,
    Widget? child,
  ) {
    return Stack(
      children: [
        IgnorePointer(
          ignoring: viewModel.shouldDelay,
          child: this.child,
        ),
        Positioned.fill(
          child: IgnorePointer(
            ignoring: !viewModel.shouldDelay,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: viewModel.shouldDelay ? 1.0 : 0.0,
              child: TweenAnimationBuilder<double>(
                duration: const Duration(seconds: 5),
                tween: Tween<double>(begin: 0.0, end: 1.0),
                onEnd: viewModel.done,
                builder: (context, value, _) => LinearProgressIndicator(
                  value: value,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  TaskCurrentOptionsDelayedModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentOptionsDelayedModel();
}
