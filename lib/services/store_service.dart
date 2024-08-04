import 'package:stacked/stacked_annotations.dart';
import 'package:the_task/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class StoreService implements InitializableDependency {
  late Store _store;

  Box<T> getBox<T>() => _store.box<T>();

  @override
  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _store = Store(
      getObjectBoxModel(),
      directory: join(dir.path, 'objectbox'),
    );
  }
}
