import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'goal_list_empty_model.dart';

class GoalListEmpty extends StackedView<GoalListEmptyModel> {
  const GoalListEmpty({super.key});

  @override
  Widget builder(
    BuildContext context,
    GoalListEmptyModel viewModel,
    Widget? child,
  ) {
    return const Center(
      child: Text(
        'No goals found',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  GoalListEmptyModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoalListEmptyModel();
}
