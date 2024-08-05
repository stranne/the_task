import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/ui/common/ui_helpers.dart';
import 'package:the_task/ui/widgets/common/ordered_list/ordered_list.dart';

import 'task_item_model.dart';

class TaskItem extends StackedView<TaskItemModel> {
  final Task task;
  final bool hideTitle;

  const TaskItem({
    super.key,
    required this.task,
    this.hideTitle = false,
  });

  @override
  Widget builder(
    BuildContext context,
    TaskItemModel viewModel,
    Widget? child,
  ) {
    final goal = task.goal.target;
    final feedback = task.feedback.target;
    final sectionHeaderStyle = emptyContentTextStyle.copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w800,
    );

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (!hideTitle) ...[
            Text(
              task.title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
              textAlign: TextAlign.center,
            ),
            verticalSpaceMedium,
          ],
          Text(
            'Description'.toUpperCase(),
            style: sectionHeaderStyle,
            textAlign: TextAlign.center,
          ),
          Text(task.description),
          verticalSpaceMedium,
          if (goal != null) ...[
            Text(
              'Goal'.toUpperCase(),
              style: sectionHeaderStyle,
              textAlign: TextAlign.center,
            ),
            Text(goal.title),
            verticalSpaceMedium,
          ],
          Text(
            'Why'.toUpperCase(),
            style: sectionHeaderStyle,
            textAlign: TextAlign.center,
          ),
          Text(task.why),
          verticalSpaceMedium,
          Text(
            'Step-by-step'.toUpperCase(),
            style: sectionHeaderStyle,
            textAlign: TextAlign.center,
          ),
          OrderedList(
            items: task.stepByStep
                .map(
                  (step) => Text(step),
                )
                .toList(),
          ),
          if (feedback != null &&
              (feedback.typeIds.isNotEmpty || feedback.comment != null)) ...[
            verticalSpaceMedium,
            Text(
              'Feedback'.toUpperCase(),
              style: sectionHeaderStyle,
              textAlign: TextAlign.center,
            ),
            OrderedList(
              items: feedback.types
                  .map(viewModel.getFeedbackTypeString)
                  .map((text) => Text(text))
                  .toList(),
            ),
            if (feedback.comment != null) ...[
              verticalSpaceSmall,
              Text(feedback.comment!),
            ],
          ],
        ],
      ),
    );
  }

  @override
  TaskItemModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskItemModel();
}
