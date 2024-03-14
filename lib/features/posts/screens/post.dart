import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/post.dart';

/// A screen showing a post with the specific [id].
class PostScreen extends ConsumerWidget {
  const PostScreen(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final post = ref.watch(postProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      body: post.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Center(child: Text('An error occured')),
        data: (post) {
          final records = [
            (label: 'Title', text: post.title),
            (label: 'Body', text: post.body),
            (label: 'Tags', text: post.tags.join(', ')),
            (label: 'Reactions', text: post.reactions.toString()),
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
