import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/todo.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(todoProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      body: todo.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Center(child: Text('An error occured')),
        data: (todo) {
          final records = [
            (label: 'Todo', text: todo.todo),
            (label: 'User ID', text: todo.userId.toString()),
            (
              label: 'Status',
              text: todo.completed ? 'Completed' : 'Not completed'
            ),
          ];
          return ListView.builder(
            itemCount: records.length,
            itemBuilder: (_, index) {
              final record = records[index];
              return ListTile(
                title: Text(record.label),
                subtitle: Text(record.text),
              );
            },
          );
        },
      ),
    );
  }
}
