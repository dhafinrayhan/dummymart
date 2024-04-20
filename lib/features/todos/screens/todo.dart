import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../services/api/api_client.dart';
import '../../../utils/extensions.dart';
import '../../../utils/hooks.dart';
import '../providers/todo.dart';
import '../providers/todos.dart';

/// A screen showing a todo with the specific [id], with a floating action
/// button to edit the todo and a delete button to delete the todo.
class TodoScreen extends ConsumerWidget {
  const TodoScreen(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(todoProvider(id));

    void confirmDelete() {
      showDialog(
        context: context,
        useRootNavigator: false,
        builder: (_) => _ConfirmDeleteDialog(id),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
        actions: [
          IconButton(
            onPressed: confirmDelete,
            icon: const Icon(Icons.delete),
            color: context.colorScheme.error,
            tooltip: 'Delete',
          ),
        ],
      ),
      body: todo.when(
        // Set this option to false to show the loading state after updating
        // the todo.
        skipLoadingOnRefresh: false,
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Center(child: Text('An error occurred')),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/todos/$id/update'),
        tooltip: 'Edit',
        child: const Icon(Icons.edit),
      ),
    );
  }
}

class _ConfirmDeleteDialog extends HookConsumerWidget {
  const _ConfirmDeleteDialog(this.id);

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (:pending, :snapshot, hasError: _) = useAsyncTask();

    Future<void> deleteTodo() async {
      try {
        await ref.read(todosProvider.notifier).delete(id);

        if (!context.mounted) return;
        // Pop the dialog.
        Navigator.of(context).pop();
        // Pop the todo screen.
        context.pop();
      } on ApiClientException catch (e) {
        if (!context.mounted) return;
        context.showTextSnackBar(e.responseMessage ?? 'Delete todo failed');
      }
    }

    return AlertDialog(
      title: const Text('Delete this todo?'),
      content: snapshot.connectionState == ConnectionState.waiting
          ? const SizedBox(
              height: 48,
              child: Center(child: CircularProgressIndicator()),
            )
          : null,
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => pending.value = deleteTodo(),
          child: const Text('Yes'),
        ),
      ],
    );
  }
}
