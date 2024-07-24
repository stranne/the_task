import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/services/store_service.dart';
import 'package:the_task/services/task_current_service.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await initialize();
    await Future.delayed(const Duration(seconds: 1));

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    _navigationService.replaceWithHomeView();
  }

  Future initialize() async {
    await locator<StoreService>().initAsync();
    await locator<TaskCurrentService>().init();
  }
}
