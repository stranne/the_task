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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: [
          if (!hideTitle) ...[
            Text(
              task.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            verticalSpaceMedium,
          ],
          Text(
            'Description',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(task.description),
          verticalSpaceMedium,
          Text(
            'Why',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(task.why),
          verticalSpaceMedium,
          Text(
            'Step-by-step',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          OrderedList(
            items: task.stepByStep
                .map(
                  (step) => Text(step),
                )
                .toList(),
          ),
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
