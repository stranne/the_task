import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/services/goal_service.dart';

class TaskCurrentLayoutModel extends BaseViewModel {
  bool get hasAnyGoals => locator<GoalService>().goals.isNotEmpty;
}
