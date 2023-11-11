import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api_client.dart';
import '../models/todo.dart';

part 'todos.g.dart';

@riverpod
class Todos extends _$Todos {
  @override
  Future<List<Todo>> build() =>
      ref.watch(apiClientProvider.notifier).fetchTodos();

  Future<Todo> add(Todo todo) async {
    final result = await ref.read(apiClientProvider.notifier).addTodo(todo);
    ref.invalidateSelf();
    return result;
  }
}
