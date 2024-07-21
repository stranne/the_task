import 'package:flutter_test/flutter_test.dart';
import 'package:the_task/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('GoalEditViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
