import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/app/app.router.dart';
import 'package:the_task/models/goal.dart';
import 'package:the_task/services/goal_service.dart';

class GoalListItemModel extends BaseViewModel {
  Future<void> delete(Goal goal) async {
    await locator<GoalService>().deleteAsync(goal);
  }

  void edit(Goal goal) {
    locator<NavigationService>().navigateTo(
      Routes.goalEditView,
      arguments: GoalEditViewArguments(goal: goal),
    );
  }
}
