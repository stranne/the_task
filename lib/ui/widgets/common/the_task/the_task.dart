import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'the_task_model.dart';

class TheTask extends StackedView<TheTaskModel> {
  const TheTask({super.key});

  @override
  Widget builder(
    BuildContext context,
    TheTaskModel viewModel,
    Widget? child,
  ) {
    return const Center(
      child: Text(
        'The task',
      ),
    );
  }

  @override
  TheTaskModel viewModelBuilder(
    BuildContext context,
  ) =>
      TheTaskModel();
}
