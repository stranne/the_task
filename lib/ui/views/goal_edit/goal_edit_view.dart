import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/widgets/common/goal_form/goal_form.dart';

import 'goal_edit_viewmodel.dart';

class GoalEditView extends StackedView<GoalEditViewModel> {
  const GoalEditView({Key? key}) : super(key: key);

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
      body: const GoalForm.edit(),
    );
  }

  @override
  GoalEditViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoalEditViewModel();
}
