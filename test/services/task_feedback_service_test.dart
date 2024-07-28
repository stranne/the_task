import 'package:flutter_test/flutter_test.dart';
import 'package:the_task/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('TaskFeedbackServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
