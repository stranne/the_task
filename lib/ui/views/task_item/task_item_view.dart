import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/ui/widgets/common/task_item/task_item.dart';

import 'task_item_viewmodel.dart';

class TaskItemView extends StackedView<TaskItemViewModel> {
  final Task task;

  const TaskItemView({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TaskItemViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TaskItem(
            task: task,
            hideTitle: true,
          ),
        ),
      ),
    );
  }

  @override
  TaskItemViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskItemViewModel();
}
