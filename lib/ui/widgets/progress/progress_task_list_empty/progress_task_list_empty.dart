import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/common/ui_helpers.dart';

import 'progress_task_list_empty_model.dart';

class ProgressTaskListEmpty extends StackedView<ProgressTaskListEmptyModel> {
  const ProgressTaskListEmpty({super.key});

  @override
  Widget builder(
    BuildContext context,
    ProgressTaskListEmptyModel viewModel,
    Widget? child,
  ) {
    return Center(
      child: Text(
        'No tasks found',
        style: emptyContentTextStyle,
      ),
    );
  }

  @override
  ProgressTaskListEmptyModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProgressTaskListEmptyModel();
}
