import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'loading_indicator_delayed_model.dart';

class LoadingIndicatorDelayed
    extends StackedView<LoadingIndicatorDelayedModel> {
  final Duration? duration;

  const LoadingIndicatorDelayed({
    super.key,
    this.duration = const Duration(milliseconds: 200),
  });

  @override
  Widget builder(
    BuildContext context,
    LoadingIndicatorDelayedModel viewModel,
    Widget? child,
  ) {
    return viewModel.display
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : const SizedBox.shrink();
  }

  @override
  LoadingIndicatorDelayedModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoadingIndicatorDelayedModel(duration);
}
