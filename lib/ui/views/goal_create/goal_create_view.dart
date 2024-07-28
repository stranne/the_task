import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/widgets/goal/goal_form/goal_form.dart';

import 'goal_create_viewmodel.dart';

class GoalCreateView extends StackedView<GoalCreateViewModel> {
  const GoalCreateView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GoalCreateViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Goal'),
      ),
      body: GoalForm.blank(
        onSubmit: viewModel.createAsync,
      ),
    );
  }

  @override
  GoalCreateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoalCreateViewModel();
}
