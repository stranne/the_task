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
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: GoalCreateView),
    MaterialRoute(page: GoalEditView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: GoalService),
    LazySingleton(classType: StoreService),
    LazySingleton(classType: TaskCurrentService),
    LazySingleton(classType: TaskStateService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
