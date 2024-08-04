import 'package:the_task/services/task_current_options_delayed_service.dart';
import 'package:the_task/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:the_task/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:the_task/ui/views/home/home_view.dart';
import 'package:the_task/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/ui/views/goal_create/goal_create_view.dart';
import 'package:the_task/ui/views/goal_edit/goal_edit_view.dart';
import 'package:the_task/services/goal_service.dart';
import 'package:the_task/services/store_service.dart';
import 'package:the_task/services/task_current_service.dart';
import 'package:the_task/services/task_state_service.dart';
import 'package:the_task/services/task_service.dart';
import 'package:the_task/services/generative_service.dart';
import 'package:the_task/services/task_create_service.dart';
import 'package:the_task/ui/views/task_item/task_item_view.dart';
import 'package:the_task/ui/bottom_sheets/task_current_feedback/task_current_feedback_sheet.dart';
import 'package:the_task/services/task_feedback_type_service.dart';
import 'package:the_task/services/task_feedback_service.dart';
import 'package:the_task/services/task_current_countdown_service.dart';
import 'package:the_task/services/locale_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: GoalCreateView),
    MaterialRoute(page: GoalEditView),
    MaterialRoute(page: TaskItemView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    InitializableSingleton(classType: StoreService),
    LazySingleton(classType: GenerativeService),
    LazySingleton(classType: TaskStateService),
    LazySingleton(classType: TaskFeedbackTypeService),
    InitializableSingleton(classType: TaskService),
    InitializableSingleton(classType: TaskCurrentService),
    LazySingleton(classType: TaskCurrentCountdownService),
    InitializableSingleton(classType: GoalService),
    LazySingleton(classType: TaskCreateService),
    LazySingleton(classType: TaskFeedbackService),
    LazySingleton(classType: TaskCurrentOptionsDelayedService),
    Singleton(classType: LocaleService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    StackedBottomsheet(classType: TaskCurrentFeedbackSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
  logger: StackedLogger(),
)
class App {}
