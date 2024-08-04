// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_services/src/bottom_sheet/bottom_sheet_service.dart';
import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_shared/stacked_shared.dart';

import '../services/generative_service.dart';
import '../services/goal_service.dart';
import '../services/locale_service.dart';
import '../services/store_service.dart';
import '../services/task_create_service.dart';
import '../services/task_current_countdown_service.dart';
import '../services/task_current_options_delayed_service.dart';
import '../services/task_current_service.dart';
import '../services/task_feedback_service.dart';
import '../services/task_feedback_type_service.dart';
import '../services/task_service.dart';
import '../services/task_state_service.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());
  final storeService = StoreService();
  await storeService.init();
  locator.registerSingleton(storeService);

  locator.registerLazySingleton(() => GenerativeService());
  locator.registerLazySingleton(() => TaskStateService());
  locator.registerLazySingleton(() => TaskFeedbackTypeService());
  final taskService = TaskService();
  await taskService.init();
  locator.registerSingleton(taskService);

  final taskCurrentService = TaskCurrentService();
  await taskCurrentService.init();
  locator.registerSingleton(taskCurrentService);

  locator.registerLazySingleton(() => TaskCurrentCountdownService());
  final goalService = GoalService();
  await goalService.init();
  locator.registerSingleton(goalService);

  locator.registerLazySingleton(() => TaskCreateService());
  locator.registerLazySingleton(() => TaskFeedbackService());
  locator.registerLazySingleton(() => TaskCurrentOptionsDelayedService());
  locator.registerSingleton(LocaleService());
}
