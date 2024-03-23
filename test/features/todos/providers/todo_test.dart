import 'package:dummymart/features/todos/models/todo.dart';
import 'package:dummymart/features/todos/providers/todo.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:test/test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Get data from todoProvider', () {
    test('should expose a Todo with the correct id', () async {
      final container = createContainer(overrides: [
        apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
      ]);

      const id = 24;
      await expectLater(
        container.read(todoProvider(24).future),
        completion(isA<Todo>().having((item) => item.id, 'id', equals(id))),
      );
    });
  });
}
