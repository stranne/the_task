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
    final (delay, shouldDelay) = viewModel.getDuration(viewModel.shouldDelayTo);

    return Stack(
      children: [
        IgnorePointer(
          ignoring: shouldDelay,
          child: this.child,
        ),
        Positioned.fill(
          child: IgnorePointer(
            ignoring: !shouldDelay,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: shouldDelay ? 1.0 : 0.0,
              child: TweenAnimationBuilder<double>(
                duration: delay,
                tween: Tween<double>(begin: 0.0, end: 1.0),
                onEnd: () => viewModel.notifyListeners(),
                builder: (context, value, _) => LinearProgressIndicator(
                  value: value,
                  valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).colorScheme.primary.withAlpha(100),
                  ),
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
