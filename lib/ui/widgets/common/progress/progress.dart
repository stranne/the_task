import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'progress_model.dart';

class Progress extends StackedView<ProgressModel> {
  const Progress({super.key});

  @override
  Widget builder(
    BuildContext context,
    ProgressModel viewModel,
    Widget? child,
  ) {
    return const Center(
      child: Text(
        'Progress',
      ),
    );
  }

  @override
  ProgressModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProgressModel();
}
