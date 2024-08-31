import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../services/api/api_client.dart';
import '../../../utils/extensions.dart';
import '../../../widgets/button.dart';
import '../models/todo.dart';
import '../providers/todo.dart';
import '../providers/todos.dart';

class UpdateTodoScreen extends ConsumerWidget {
  const UpdateTodoScreen(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(todoProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Todo'),
      ),
      body: todo.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Center(child: Text('An error occurred')),
        data: (todo) => _UpdateTodoForm(id, todo),
      ),
    );
  }
}

class _UpdateTodoForm extends HookConsumerWidget {
  const _UpdateTodoForm(this.id, this.todo);

  final int id;
  final Todo todo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoController = useTextEditingController(text: todo.todo);
    final userIdController =
        useTextEditingController(text: todo.userId.toString());
    final isCompleted = useState(todo.completed);

    Future<void> onSubmitPressed() async {
      try {
        await ref.read(todosProvider.notifier).updateItem(
            id,
            Todo(
              id: -1,
              todo: todoController.text,
              completed: isCompleted.value,
              userId: int.parse(userIdController.text),
            ));

        if (!context.mounted) return;
        context.pop();
      } on ApiClientException catch (e) {
        if (!context.mounted) return;
        context.showTextSnackBar(e.responseMessage ?? 'Update todo failed');
      }
    }

    return SingleChildScrollView(
      child: SeparatedColumn(
        padding: EdgeInsets.all(context.gutter),
        separatorBuilder: () => const Gutter(),
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: todoController,
            decoration: const InputDecoration(labelText: 'Todo'),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: userIdController,
            decoration: const InputDecoration(labelText: 'User ID'),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
          ),
          SegmentedButton(
            segments: const [
              ButtonSegment(
                value: false,
                label: Text('Not completed'),
                icon: Icon(Icons.close),
              ),
              ButtonSegment(
                value: true,
                label: Text('Completed'),
                icon: Icon(Icons.check),
              ),
            ],
            selected: {isCompleted.value},
            onSelectionChanged: (value) => isCompleted.value = value.first,
            showSelectedIcon: false,
          ),
          const SizedBox.shrink(),
          AppButton(
            onPressed: onSubmitPressed,
            label: 'Submit',
          ),
        ],
      ),
    );
  }
}
