import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'goal_list_model.dart';

class GoalList extends StackedView<GoalListModel> {
  const GoalList({super.key});

  @override
  Widget builder(
    BuildContext context,
    GoalListModel viewModel,
    Widget? child,
  ) {
    return const Center(
      child: Text(
        'Goal list',
      ),
    );
  }

  @override
  GoalListModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoalListModel();
}
