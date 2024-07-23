import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/widgets/common/progress_task_list_item/progress_task_list_item.dart';

import 'progress_task_list_model.dart';

class ProgressTaskList extends StackedView<ProgressTaskListModel> {
  const ProgressTaskList({super.key});

  @override
  Widget builder(
    BuildContext context,
    ProgressTaskListModel viewModel,
    Widget? child,
  ) {
    final tasks = viewModel.tasks;

    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) => ProgressTaskListItem(task: tasks[index]),
    );
  }

  @override
  ProgressTaskListModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProgressTaskListModel();
}
