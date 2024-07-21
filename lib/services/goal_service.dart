import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/goal.dart';
import 'package:the_task/objectbox.g.dart';
import 'package:the_task/services/store_service.dart';

class GoalService with ListenableServiceMixin {
  Store get _store => locator<StoreService>().store;

  Future<void> createAsync(Goal goal) async {
    await _store.box<Goal>().putAsync(goal);
    notifyListeners();
  }

  Future<void> updateAsync(Goal goal) async {
    await _store.box<Goal>().putAsync(goal);
    notifyListeners();
  }

  Future<void> deleteAsync(Goal goal) async {
    await _store.box<Goal>().removeAsync(goal.id);
    notifyListeners();
  }

  List<Goal> getAll() {
    return _store.box<Goal>().getAll();
  }
}
