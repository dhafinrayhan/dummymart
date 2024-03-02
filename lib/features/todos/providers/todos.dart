import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/todo.dart';
import 'todo.dart';

part 'todos.g.dart';

@riverpod
class Todos extends _$Todos {
  @override
  Future<List<Todo>> build() => ref.watch(apiServiceProvider).fetchTodos();

  Future<Todo> add(Todo todo) async {
    final result = await ref.read(apiServiceProvider).addTodo(todo);
    ref.invalidateSelf();
    return result;
  }

  Future<Todo> updateItem(int id, Todo todo) async {
    final result = await ref.read(apiServiceProvider).updateTodo(id, todo);
    ref
      ..invalidate(todoProvider(id))
      ..invalidateSelf();
    return result;
  }

  Future<Todo> delete(int id) async {
    final result = await ref.read(apiServiceProvider).deleteTodo(id);
    ref
      ..invalidate(todoProvider(id))
      ..invalidateSelf();
    return result;
  }
}
