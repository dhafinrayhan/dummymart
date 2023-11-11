import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api_client.dart';
import '../models/todo.dart';

part 'todo.g.dart';

@riverpod
Future<Todo> todo(TodoRef ref, int id) =>
    ref.watch(apiClientProvider.notifier).fetchTodo(id);
