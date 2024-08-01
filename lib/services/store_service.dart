import 'package:stacked/stacked_annotations.dart';
import 'package:the_task/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class StoreService implements InitializableDependency {
  late Store _store;

  Store get store => _store;

  @override
  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _store = Store(
      getObjectBoxModel(),
      directory: join(dir.path, 'objectbox'),
    );
  }
}
