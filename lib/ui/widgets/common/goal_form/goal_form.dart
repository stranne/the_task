import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'goal_form_model.dart';

class GoalForm extends StackedView<GoalFormModel> {
  const GoalForm.blank({super.key});

  // TODO
  const GoalForm.edit({super.key});

  @override
  Widget builder(
    BuildContext context,
    GoalFormModel viewModel,
    Widget? child,
  ) {
    return Center(
      child: Text(
        'Goal form',
      ),
    );
  }

  @override
  GoalFormModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoalFormModel();
}
