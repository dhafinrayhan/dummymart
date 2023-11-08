import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api_client.dart';
import '../models/todo.dart';

part 'todos.g.dart';

@riverpod
Future<List<Todo>> todos(TodosRef ref) =>
    ref.watch(apiClientProvider.notifier).fetchTodos();
