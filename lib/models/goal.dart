import 'package:objectbox/objectbox.dart';

@Entity()
class Goal {
  int id;
  String title;

  Goal({
    this.id = 0,
    required this.title,
  });
}
