import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:the_task/models/goal.dart';
import 'package:the_task/ui/common/ui_helpers.dart';

import 'goal_form_model.dart';
import 'goal_form.form.dart';

@FormView(fields: [
  FormTextField(name: 'title'),
])
class GoalForm extends StackedView<GoalFormModel> with $GoalForm {
  final Function(Goal) onSubmit;
  final String _submitButtonLabel;
  final Goal? goal;

  const GoalForm.blank({
    super.key,
    required this.onSubmit,
  })  : goal = null,
        _submitButtonLabel = 'Create Goal';

  const GoalForm.edit({
    super.key,
    required this.onSubmit,
    required this.goal,
  }) : _submitButtonLabel = 'Save Changes';

  @override
  Widget builder(
    BuildContext context,
    GoalFormModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          verticalSpaceMedium,
          ElevatedButton(
            onPressed: () => viewModel.submit(goal),
            child: Text(_submitButtonLabel),
          ),
        ],
      ),
    );
  }

  @override
  GoalFormModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoalFormModel(onSubmit);

  @override
  void onViewModelReady(GoalFormModel viewModel) {
    syncFormWithViewModel(viewModel);

    viewModel.clearForm();

    if (goal != null) {
      titleController.text = goal!.title;
    }
  }
}
