import 'package:the_task/app/app.locator.dart';
import 'package:the_task/services/goal_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int get initialIndex => locator<GoalService>().goals.isEmpty ? 0 : 1;
}
