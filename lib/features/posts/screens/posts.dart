import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/post.dart';
import '../providers/posts.dart';

class PostsScreen extends ConsumerWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(postsProvider.future),
        child: posts.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (_, __) => const Center(child: Text('An error occured')),
          data: (posts) => ListView.builder(
            itemCount: posts.length,
            itemBuilder: (_, index) => _PostListTile(posts[index]),
          ),
        ),
      ),
    );
  }
}

class _PostListTile extends StatelessWidget {
  const _PostListTile(this.post);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.go('/posts/${post.id}'),
      title: Text(post.title),
      subtitle: Text('Reactions: ${post.reactions}'),
    );
  }
}
