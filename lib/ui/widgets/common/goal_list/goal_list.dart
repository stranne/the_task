import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/widgets/common/goal_list_item/goal_list_item.dart';

import 'goal_list_model.dart';

class GoalList extends StackedView<GoalListModel> {
  const GoalList({super.key});

  @override
  Widget builder(
    BuildContext context,
    GoalListModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: ListView.builder(
        itemCount: viewModel.goals.length,
        itemBuilder: (context, index) {
          final goal = viewModel.goals[index];
          return GoalListItem(goal: goal);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.addGoal();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  GoalListModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoalListModel();
}
