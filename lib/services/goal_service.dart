import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/app/app.logger.dart';
import 'package:the_task/models/goal.dart';
import 'package:the_task/objectbox.g.dart';
import 'package:the_task/services/store_service.dart';

class GoalService
    with ListenableServiceMixin
    implements InitializableDependency {
  final _logger = getLogger('GoalService');

  Box<Goal> get _box => locator<StoreService>().getBox<Goal>();

  late final ReactiveList<Goal> _goals;
  List<Goal> get goals => _goals;

  @override
  Future<void> init() async {
    _goals = ReactiveList<Goal>.from(await _box.getAllAsync());
    listenToReactiveValues([_goals]);
  }

  Future<void> createAsync(Goal goal) async {
    _logger.i('Creating goal: ${goal.title}');
    await _box.putAsync(goal, mode: PutMode.insert);
    await _updateAsync();
  }

  Future<void> updateAsync(Goal goal) async {
    _logger.i('Update goal: ${goal.title}');
    await _box.putAsync(goal, mode: PutMode.update);
    await _updateAsync();
  }

  Future<void> deleteAsync(Goal goal) async {
    _logger.i('Delete goal: ${goal.title}');
    await _box.removeAsync(goal.id);
    await _updateAsync();
  }

  Future<void> _updateAsync() async =>
      _goals.assignAll(await _box.getAllAsync());
}
