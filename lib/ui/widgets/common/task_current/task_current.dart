import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/models/task_current_state.dart';
import 'package:the_task/ui/widgets/common/progress_indicator_delayed/progress_indicator_delyaed.dart';
import 'package:the_task/ui/widgets/common/task_current_active/task_current_active.dart';
import 'package:the_task/ui/widgets/common/task_current_creating/task_current_creating.dart';
import 'package:the_task/ui/widgets/common/task_current_none/task_current_none.dart';
import 'package:the_task/ui/widgets/common/task_current_waiting_for_approval/task_current_waiting_for_approval.dart';

import 'task_current_model.dart';

class TaskCurrent extends StackedView<TaskCurrentModel> {
  const TaskCurrent({super.key});

  @override
  Widget builder(
    BuildContext context,
    TaskCurrentModel viewModel,
    Widget? child,
  ) {
    switch (viewModel.state) {
      case TaskCurrentState.none:
        return const TaskCurrentNone();
      case TaskCurrentState.creating:
        return const TaskCurrentCreating();
      case TaskCurrentState.waitingForApproval:
        return buildWithTask(
          viewModel,
          (task) => TaskCurrentWaitingForApproval(
            task: task,
          ),
        );
      case TaskCurrentState.active:
        return buildWithTask(
          viewModel,
          (task) => TaskCurrentActive(
            task: task,
          ),
        );
    }
  }

  @override
  TaskCurrentModel viewModelBuilder(
    BuildContext context,
  ) =>
      TaskCurrentModel();

  Widget buildWithTask(
    TaskCurrentModel viewModel,
    Widget Function(Task) builder,
  ) {
    return FutureBuilder(
        future: viewModel.getTaskAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return builder(snapshot.data as Task);
          } else {
            return const Center(
              child: ProgressIndicatorDelayed(),
            );
          }
        });
  }
}
