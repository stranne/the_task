import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/common/ui_helpers.dart';
import 'package:the_task/ui/widgets/task_current/task_current_layout/task_current_layout.dart';

import 'task_current_none_model.dart';

class TaskCurrentNone extends StackedView<TaskCurrentNoneModel> {
  const TaskCurrentNone({super.key});

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentNoneModel viewModel,
    Widget? child,
  ) {
    return TaskCurrentLayout(
      options: [
        ElevatedButton(
          onPressed: viewModel.createTaskAsync,
          child: const Text('Create Task'),
        ),
      ],
      scrollable: false,
      child: Center(
        child: Text(
          'No current task',
          style: emptyContentTextStyle,
        ),
      ),
    );
  }

  @override
  TaskCurrentNoneModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentNoneModel();
}
