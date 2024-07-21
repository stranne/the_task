import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/app/app.router.dart';

class GoalListModel extends BaseViewModel {
  void addGoal() =>
      locator<NavigationService>().navigateTo(Routes.goalCreateView);
}
