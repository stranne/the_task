import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/models/task.dart';

import 'progress_task_list_item_model.dart';

class ProgressTaskListItem extends StackedView<ProgressTaskListItemModel> {
  final Task task;

  const ProgressTaskListItem({
    super.key,
    required this.task,
  });

  @override
  Widget builder(
    BuildContext context,
    ProgressTaskListItemModel viewModel,
    Widget? child,
  ) {
    return ListTile(
      title: Text(task.title),
      subtitle: Text(viewModel.getSubtitle(task)),
      onTap: () => viewModel.navigateToTaskAsync(task),
    );
  }

  @override
  ProgressTaskListItemModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProgressTaskListItemModel();
}
