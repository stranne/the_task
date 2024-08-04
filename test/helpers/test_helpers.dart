import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/services/goal_service.dart';
import 'package:the_task/services/store_service.dart';
import 'package:the_task/services/task_current_service.dart';
import 'package:the_task/services/task_state_service.dart';
import 'package:the_task/services/task_service.dart';
import 'package:the_task/services/generative_service.dart';
import 'package:the_task/services/task_create_service.dart';
import 'package:the_task/services/task_feedback_type_service.dart';
import 'package:the_task/services/task_feedback_service.dart';
import 'package:the_task/services/task_current_countdown_service.dart';
import 'package:the_task/services/task_current_options_delayed_service.dart';
import 'package:the_task/services/locale_service.dart';
// @stacked-import

import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<BottomSheetService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DialogService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<GoalService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<StoreService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<TaskCurrentService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<TaskStateService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<TaskService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<GenerativeService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<TaskCreateService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<TaskFeedbackTypeService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<TaskFeedbackService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<TaskCurrentCountdownService>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<TaskCurrentOptionsDelayedService>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<LocaleService>(onMissingStub: OnMissingStub.returnDefault),
// @stacked-mock-spec
])
void registerServices() {
  getAndRegisterNavigationService();
  getAndRegisterBottomSheetService();
  getAndRegisterDialogService();
  getAndRegisterGoalService();
  getAndRegisterStoreService();
  getAndRegisterTaskCurrentService();
  getAndRegisterTaskStateService();
  getAndRegisterTaskService();
  getAndRegisterGenerativeService();
  getAndRegisterTaskCreateService();
  getAndRegisterTaskFeedbackTypeService();
  getAndRegisterTaskFeedbackService();
  getAndRegisterTaskCurrentCountdownService();
  getAndRegisterTaskCurrentOptionsDelayedService();
  getAndRegisterLocaleService();
// @stacked-mock-register
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockBottomSheetService getAndRegisterBottomSheetService<T>({
  SheetResponse<T>? showCustomSheetResponse,
}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  when(service.showCustomSheet<T, T>(
    enableDrag: anyNamed('enableDrag'),
    enterBottomSheetDuration: anyNamed('enterBottomSheetDuration'),
    exitBottomSheetDuration: anyNamed('exitBottomSheetDuration'),
    ignoreSafeArea: anyNamed('ignoreSafeArea'),
    isScrollControlled: anyNamed('isScrollControlled'),
    barrierDismissible: anyNamed('barrierDismissible'),
    additionalButtonTitle: anyNamed('additionalButtonTitle'),
    variant: anyNamed('variant'),
    title: anyNamed('title'),
    hasImage: anyNamed('hasImage'),
    imageUrl: anyNamed('imageUrl'),
    showIconInMainButton: anyNamed('showIconInMainButton'),
    mainButtonTitle: anyNamed('mainButtonTitle'),
    showIconInSecondaryButton: anyNamed('showIconInSecondaryButton'),
    secondaryButtonTitle: anyNamed('secondaryButtonTitle'),
    showIconInAdditionalButton: anyNamed('showIconInAdditionalButton'),
    takesInput: anyNamed('takesInput'),
    barrierColor: anyNamed('barrierColor'),
    barrierLabel: anyNamed('barrierLabel'),
    customData: anyNamed('customData'),
    data: anyNamed('data'),
    description: anyNamed('description'),
  )).thenAnswer((realInvocation) =>
      Future.value(showCustomSheetResponse ?? SheetResponse<T>()));

  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockDialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service);
  return service;
}

MockGoalService getAndRegisterGoalService() {
  _removeRegistrationIfExists<GoalService>();
  final service = MockGoalService();
  locator.registerSingleton<GoalService>(service);
  return service;
}

MockStoreService getAndRegisterStoreService() {
  _removeRegistrationIfExists<StoreService>();
  final service = MockStoreService();
  locator.registerSingleton<StoreService>(service);
  return service;
}

MockTaskCurrentService getAndRegisterTaskCurrentService() {
  _removeRegistrationIfExists<TaskCurrentService>();
  final service = MockTaskCurrentService();
  locator.registerSingleton<TaskCurrentService>(service);
  return service;
}

MockTaskStateService getAndRegisterTaskStateService() {
  _removeRegistrationIfExists<TaskStateService>();
  final service = MockTaskStateService();
  locator.registerSingleton<TaskStateService>(service);
  return service;
}

MockTaskService getAndRegisterTaskService() {
  _removeRegistrationIfExists<TaskService>();
  final service = MockTaskService();
  locator.registerSingleton<TaskService>(service);
  return service;
}

MockGenerativeService getAndRegisterGenerativeService() {
  _removeRegistrationIfExists<GenerativeService>();
  final service = MockGenerativeService();
  locator.registerSingleton<GenerativeService>(service);
  return service;
}

MockTaskCreateService getAndRegisterTaskCreateService() {
  _removeRegistrationIfExists<TaskCreateService>();
  final service = MockTaskCreateService();
  locator.registerSingleton<TaskCreateService>(service);
  return service;
}

MockTaskFeedbackTypeService getAndRegisterTaskFeedbackTypeService() {
  _removeRegistrationIfExists<TaskFeedbackTypeService>();
  final service = MockTaskFeedbackTypeService();
  locator.registerSingleton<TaskFeedbackTypeService>(service);
  return service;
}

MockTaskFeedbackService getAndRegisterTaskFeedbackService() {
  _removeRegistrationIfExists<TaskFeedbackService>();
  final service = MockTaskFeedbackService();
  locator.registerSingleton<TaskFeedbackService>(service);
  return service;
}

MockTaskCurrentCountdownService getAndRegisterTaskCurrentCountdownService() {
  _removeRegistrationIfExists<TaskCurrentCountdownService>();
  final service = MockTaskCurrentCountdownService();
  locator.registerSingleton<TaskCurrentCountdownService>(service);
  return service;
}

MockTaskCurrentOptionsDelayedService
    getAndRegisterTaskCurrentOptionsDelayedService() {
  _removeRegistrationIfExists<TaskCurrentOptionsDelayedService>();
  final service = MockTaskCurrentOptionsDelayedService();
  locator.registerSingleton<TaskCurrentOptionsDelayedService>(service);
  return service;
}

MockLocaleService getAndRegisterLocaleService() {
  _removeRegistrationIfExists<LocaleService>();
  final service = MockLocaleService();
  locator.registerSingleton<LocaleService>(service);
  return service;
}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
