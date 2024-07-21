import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/goal_model.dart';

class GoalCreateViewModel extends BaseViewModel {
  void create(Goal goal) {
    // TODO save goal

    locator<NavigationService>().back();
  }
}
