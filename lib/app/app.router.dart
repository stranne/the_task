// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i7;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i10;
import 'package:the_task/models/goal.dart' as _i8;
import 'package:the_task/models/task.dart' as _i9;
import 'package:the_task/ui/views/goal_create/goal_create_view.dart' as _i4;
import 'package:the_task/ui/views/goal_edit/goal_edit_view.dart' as _i5;
import 'package:the_task/ui/views/home/home_view.dart' as _i2;
import 'package:the_task/ui/views/startup/startup_view.dart' as _i3;
import 'package:the_task/ui/views/task_item/task_item_view.dart' as _i6;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const goalCreateView = '/goal-create-view';

  static const goalEditView = '/goal-edit-view';

  static const taskItemView = '/task-item-view';

  static const all = <String>{
    homeView,
    startupView,
    goalCreateView,
    goalEditView,
    taskItemView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.goalCreateView,
      page: _i4.GoalCreateView,
    ),
    _i1.RouteDef(
      Routes.goalEditView,
      page: _i5.GoalEditView,
    ),
    _i1.RouteDef(
      Routes.taskItemView,
      page: _i6.TaskItemView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.GoalCreateView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.GoalCreateView(),
        settings: data,
      );
    },
    _i5.GoalEditView: (data) {
      final args = data.getArgs<GoalEditViewArguments>(nullOk: false);
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.GoalEditView(key: args.key, goal: args.goal),
        settings: data,
      );
    },
    _i6.TaskItemView: (data) {
      final args = data.getArgs<TaskItemViewArguments>(nullOk: false);
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => _i6.TaskItemView(key: args.key, task: args.task),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class GoalEditViewArguments {
  const GoalEditViewArguments({
    this.key,
    required this.goal,
  });

  final _i7.Key? key;

  final _i8.Goal goal;

  @override
  String toString() {
    return '{"key": "$key", "goal": "$goal"}';
  }

  @override
  bool operator ==(covariant GoalEditViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.goal == goal;
  }

  @override
  int get hashCode {
    return key.hashCode ^ goal.hashCode;
  }
}

class TaskItemViewArguments {
  const TaskItemViewArguments({
    this.key,
    required this.task,
  });

  final _i7.Key? key;

  final _i9.Task task;

  @override
  String toString() {
    return '{"key": "$key", "task": "$task"}';
  }

  @override
  bool operator ==(covariant TaskItemViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.task == task;
  }

  @override
  int get hashCode {
    return key.hashCode ^ task.hashCode;
  }
}

extension NavigatorStateExtension on _i10.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGoalCreateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.goalCreateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGoalEditView({
    _i7.Key? key,
    required _i8.Goal goal,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.goalEditView,
        arguments: GoalEditViewArguments(key: key, goal: goal),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTaskItemView({
    _i7.Key? key,
    required _i9.Task task,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.taskItemView,
        arguments: TaskItemViewArguments(key: key, task: task),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGoalCreateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.goalCreateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGoalEditView({
    _i7.Key? key,
    required _i8.Goal goal,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.goalEditView,
        arguments: GoalEditViewArguments(key: key, goal: goal),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTaskItemView({
    _i7.Key? key,
    required _i9.Task task,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.taskItemView,
        arguments: TaskItemViewArguments(key: key, task: task),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
