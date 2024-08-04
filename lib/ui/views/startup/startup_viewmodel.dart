import 'dart:ui';

import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/services/locale_service.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  StartupViewModel(Locale locale) {
    locator<LocaleService>().setLocale(locale);
  }

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    _navigationService.replaceWithHomeView();
  }
}
