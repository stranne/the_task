import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/widgets/common/loading_indicator_delayed/loading_indicator_delyaed.dart';
import 'package:the_task/ui/widgets/progress/progress_task_list_empty/progress_task_list_empty.dart';
import 'package:the_task/ui/widgets/progress/progress_task_list_item/progress_task_list_item.dart';

import 'progress_task_list_model.dart';

class ProgressTaskList extends StackedView<ProgressTaskListModel> {
  const ProgressTaskList({super.key});

  @override
  Widget builder(
    BuildContext context,
    ProgressTaskListModel viewModel,
    Widget? child,
  ) {
    if (!viewModel.dataReady) {
      return const LoadingIndicatorDelayed();
    }

    final tasks = viewModel.data;
    if (tasks == null || tasks.isEmpty) {
      return const ProgressTaskListEmpty();
    }

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
