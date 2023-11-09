import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/todo.dart';
import '../providers/todos.dart';

class TodosScreen extends ConsumerWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(todosProvider.future),
        child: todos.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (_, __) => const Center(child: Text('An error occured')),
          data: (todos) => ListView.builder(
            itemCount: todos.length,
            itemBuilder: (_, index) => _TodoListTile(todos[index]),
          ),
        ),
      ),
    );
  }
}

class _TodoListTile extends StatelessWidget {
  const _TodoListTile(this.todo);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        todo.todo,
        style: TextStyle(
          decoration: todo.completed ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}
