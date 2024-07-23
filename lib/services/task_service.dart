import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/objectbox.g.dart';
import 'package:the_task/services/store_service.dart';

class TaskService {
  Store get _store => locator<StoreService>().store;

  List<Task> getAll() => _store.box<Task>().getAll();
}
