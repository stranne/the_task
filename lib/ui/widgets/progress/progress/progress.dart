import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/widgets/common/progress_task_list/progress_task_list.dart';

import 'progress_model.dart';

class Progress extends StackedView<ProgressModel> {
  const Progress({super.key});

  @override
  Widget builder(
    BuildContext context,
    ProgressModel viewModel,
    Widget? child,
  ) {
    return const ProgressTaskList();
  }

  @override
  ProgressModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProgressModel();
}
