import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/todo.dart';

part 'todo.g.dart';

@riverpod
Future<Todo> todo(Ref ref, int id) =>
    ref.watch(apiServiceProvider).fetchTodo(id);
