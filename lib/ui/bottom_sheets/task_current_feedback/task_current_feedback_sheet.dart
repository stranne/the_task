import 'package:flutter/material.dart';
import 'package:the_task/models/task_current_feedback_sheet_data.dart';
import 'package:the_task/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/ui/widgets/task_current/task_current_feedback_form/task_current_feedback_form.dart';

import 'task_current_feedback_sheet_model.dart';

class TaskCurrentFeedbackSheet
    extends StackedView<TaskCurrentFeedbackSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const TaskCurrentFeedbackSheet({
    super.key,
    required this.completer,
    required this.request,
  });

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentFeedbackSheetModel viewModel,
    Widget? child,
  ) {
    final data = request.data as TaskCurrentFeedbackSheetData;

    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                request.title ?? 'Feedback',
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
              TaskCurrentFeedbackForm(
                task: data.task,
                feedbackTypes: data.feedbackTypes,
                close: () => completer!(
                  SheetResponse(confirmed: true),
                ),
              ),
              verticalSpaceMedium,
            ],
          ),
        ),
      ),
    );
  }

  @override
  TaskCurrentFeedbackSheetModel viewModelBuilder(BuildContext context) =>
      TaskCurrentFeedbackSheetModel();
}
