import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/models/goal.dart';

import 'goal_list_item_model.dart';

class GoalListItem extends StackedView<GoalListItemModel> {
  final Goal goal;

  const GoalListItem({
    super.key,
    required this.goal,
  });

  @override
  Widget builder(
    BuildContext context,
    GoalListItemModel viewModel,
    Widget? child,
  ) {
    return ListTile(
      title: Text(goal.title),
      onTap: () => viewModel.edit(goal),
    );
  }

  @override
  GoalListItemModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoalListItemModel();
}
