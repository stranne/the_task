import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/app/app.router.dart';
import 'package:the_task/models/goal.dart';
import 'package:the_task/services/goal_service.dart';

class GoalListModel extends ReactiveViewModel {
  final _goalService = locator<GoalService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [_goalService];

  List<Goal> get goals => _goalService.getAll();

  void addGoal() =>
      locator<NavigationService>().navigateTo(Routes.goalCreateView);
}
