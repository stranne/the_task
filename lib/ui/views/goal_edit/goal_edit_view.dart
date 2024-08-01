import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/models/goal.dart';
import 'package:the_task/ui/widgets/goal/goal_form/goal_form.dart';

import 'goal_edit_viewmodel.dart';

class GoalEditView extends StackedView<GoalEditViewModel> {
  final Goal goal;

  const GoalEditView({
    super.key,
    required this.goal,
  });

  @override
  Widget builder(
    BuildContext context,
    GoalEditViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Goal'),
      ),
      body: GoalForm.edit(
        goal: goal,
        onSubmit: viewModel.saveAsync,
      ),
    );
  }

  @override
  GoalEditViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoalEditViewModel();
}
