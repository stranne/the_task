import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_feedback_type.dart';

import 'task_current_feedback_form_model.dart';
import 'task_current_feedback_form.form.dart';

@FormView(
  fields: [
    FormTextField(name: 'comment'),
  ],
)
class TaskCurrentFeedbackForm extends StackedView<TaskCurrentFeedbackFormModel>
    with $TaskCurrentFeedbackForm {
  final Task task;
  final List<TaskFeedbackType> feedbackTypes;
  final void Function() close;

  const TaskCurrentFeedbackForm({
    super.key,
    required this.task,
    required this.feedbackTypes,
    required this.close,
  });

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentFeedbackFormModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        ...feedbackTypes
            .map(
              (feedbackType) => CheckboxListTile.adaptive(
                dense: true,
                value: viewModel.getFeedbackType(feedbackType),
                onChanged: (value) =>
                    viewModel.setFeedbackType(feedbackType, value),
                title: Text(viewModel.getFeedbackTypeDisplayText(feedbackType)),
              ),
            )
            .toList(),
        TextField(
          controller: commentController,
          focusNode: commentFocusNode,
          decoration: const InputDecoration(labelText: 'Comment'),
          maxLines: null,
          maxLength: 250,
        ),
        ElevatedButton(
          onPressed: () async {
            await viewModel.saveAsync(task);
            close();
          },
          child: const Text(
            'Save',
          ),
        ),
      ],
    );
  }

  @override
  TaskCurrentFeedbackFormModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentFeedbackFormModel();

  @override
  void onViewModelReady(TaskCurrentFeedbackFormModel viewModel) {
    syncFormWithViewModel(viewModel);

    viewModel.clearForm();

    final feedback = task.feedback.target;
    if (feedback != null) {
      viewModel.feedbackTypes = feedback.types;
      viewModel.commentValue = feedback.comment;
    }
  }

  @override
  void onDispose(TaskCurrentFeedbackFormModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }
}
