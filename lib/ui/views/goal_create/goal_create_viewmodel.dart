import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/goal.dart';
import 'package:the_task/services/goal_service.dart';

class GoalCreateViewModel extends BaseViewModel {
  Future<void> createAsync(Goal goal) async {
    await locator<GoalService>().createAsync(goal);
    locator<NavigationService>().back();
  }
}
