import 'package:flutter_test/flutter_test.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/task_state.dart';
import 'package:the_task/services/task_state_service.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('TaskStateServiceTest -', () {
    final sut = TaskStateService();

    setUp(() => registerServices());
    tearDown(() => locator.reset());

    test('toInt and fromInt mapppings are correct and consistent', () {
      final stateMap = {
        TaskState.waitingForApproval: 1,
        TaskState.skipped: 2,
        TaskState.inProgress: 3,
        TaskState.completed: 4,
        TaskState.abandoned: 5,
      };

      for (var state in stateMap.entries) {
        final actualId = sut.toInt(state.key);
        final actualState = sut.fromInt(actualId);

        expect(actualId, state.value);
        expect(actualState, state.key);
      }
    });

    test('throws exception when unknown stateId is provided', () {
      expect(() => sut.fromInt(0), throwsA(isA<StateError>()));
    });
  });
}
