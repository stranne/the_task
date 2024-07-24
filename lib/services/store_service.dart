import 'package:the_task/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class StoreService {
  late Store _store;

  Store get store => _store;

  Future<void> initAsync() async {
    final dir = await getApplicationDocumentsDirectory();
    _store = Store(
      getObjectBoxModel(),
      directory: join(dir.path, 'objectbox'),
    );
  }
}
