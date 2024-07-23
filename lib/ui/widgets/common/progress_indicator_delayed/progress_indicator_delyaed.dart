import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'progress_indicator_delyaed_model.dart';

class ProgressIndicatorDelayed extends StackedView<ProgressIndicatorDelayedModel> {
  final Duration? duration;

  const ProgressIndicatorDelayed({
    super.key,
    this.duration = const Duration(milliseconds: 200),
  });

  @override
  Widget builder(
    BuildContext context,
    ProgressIndicatorDelayedModel viewModel,
    Widget? child,
  ) {
    return viewModel.display
        ? const Center(
            child: ProgressIndicatorDelayed(),
          )
        : const SizedBox.shrink();
  }

  @override
  ProgressIndicatorDelayedModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProgressIndicatorDelayedModel(duration);
}
