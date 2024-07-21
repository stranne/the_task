import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/ui/widgets/common/goal_list/goal_list.dart';
import 'package:the_task/ui/widgets/common/progress/progress.dart';
import 'package:the_task/ui/widgets/common/task_current/task_current.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('The Task'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Goals'),
              Tab(text: 'Current Task'),
              Tab(text: 'Progress'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            GoalList(),
            TaskCurrent(),
            Progress(),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
