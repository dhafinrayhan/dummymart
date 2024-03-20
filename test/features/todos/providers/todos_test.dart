import 'package:dummymart/features/todos/models/todo.dart';
import 'package:dummymart/features/todos/providers/todo.dart';
import 'package:dummymart/features/todos/providers/todos.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:test/test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Get data from todosProvider', () {
    test('should expose a non-empty List<Todo>', () async {
      final container = createContainer(overrides: [
        apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
      ]);

      await expectLater(
        container.read(todosProvider.future),
        completion(allOf(
          isA<List<Todo>>(),
          isNotEmpty,
        )),
      );
    });
  });

  group('Add todo with todosProvider.notifier.add', () {
    test('added todo should be available on the list exposed by todosProvider',
        () async {
      final container = createContainer(overrides: [
        apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
      ]);

      const todo = Todo(
        id: -1,
        todo: 'Do something else',
        completed: false,
        userId: 12,
      );
      final Todo(:id) = await container.read(todosProvider.notifier).add(todo);
      await expectLater(
        container.read(todosProvider.future),
        completion(anyElement(equals(todo.copyWith(id: id)))),
      );
    });

    test('added todo should be accessible with todoProvider', () async {
      final container = createContainer(overrides: [
        apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
      ]);

      const todo = Todo(
        id: -1,
        todo: 'Do something else',
        completed: false,
        userId: 12,
      );
      final Todo(:id) = await container.read(todosProvider.notifier).add(todo);
      await expectLater(
        container.read(todoProvider(id).future),
        completion(equals(todo.copyWith(id: id))),
      );
    });
  });

  group('Update todo with todosProvider.notifier.updateItem', () {
    test('todo should be updated on the list exposed by todosProvider',
        () async {
      final container = createContainer(overrides: [
        apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
      ]);

      const id = 24;
      const todo = Todo(
        id: -1,
        todo: 'Do something else',
        completed: false,
        userId: 12,
      );
      await container.read(todosProvider.notifier).updateItem(id, todo);
      await expectLater(
        container.read(todosProvider.future),
        completion(isA<List<Todo>>().having(
          (items) => items.singleWhere((item) => item.id == id),
          'item where item.id == id',
          equals(todo.copyWith(id: id)),
        )),
      );
    });

    test('todo should be updated on the value exposed by todoProvider',
        () async {
      final container = createContainer(overrides: [
        apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
      ]);

      const id = 24;
      const todo = Todo(
        id: -1,
        todo: 'Do something else',
        completed: false,
        userId: 12,
      );
      await container.read(todosProvider.notifier).updateItem(id, todo);
      await expectLater(
        container.read(todoProvider(id).future),
        completion(equals(todo.copyWith(id: id))),
      );
    });
  });

  group('Delete todo with todosProvider.notifier.delete', () {
    test('todo should be gone from the list exposed by todosProvider',
        () async {
      final container = createContainer(overrides: [
        apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
      ]);

      const id = 24;
      await container.read(todosProvider.notifier).delete(id);
      await expectLater(
        container.read(todosProvider.future),
        completion(
          isNot(anyElement(isA<Todo>().having((item) => item.id, 'id', id))),
        ),
      );
    });
  });
}
