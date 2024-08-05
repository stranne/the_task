import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/common/ui_helpers.dart';

import 'goal_list_empty_model.dart';

class GoalListEmpty extends StackedView<GoalListEmptyModel> {
  const GoalListEmpty({super.key});

  @override
  Widget builder(
    BuildContext context,
    GoalListEmptyModel viewModel,
    Widget? child,
  ) {
    return Center(
      child: Text(
        'No goals found',
        style: emptyContentTextStyle,
      ),
    );
  }

  @override
  GoalListEmptyModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoalListEmptyModel();
}
