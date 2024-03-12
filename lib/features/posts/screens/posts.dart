import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/post.dart';
import '../providers/posts.dart';

class PostsScreen extends HookConsumerWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSearchMode = useState(false);
    final search = useState('');
    final searchController = useTextEditingController();
    final searchFocusNode = useFocusNode();

    final posts = ref.watch(postsProvider(search: search.value));

    useEffect(() {
      void searchControllerListener() {
        EasyDebounce.debounce(
          'search-post',
          const Duration(milliseconds: 500),
          () => search.value = searchController.text,
        );
      }

      searchController.addListener(searchControllerListener);
      return () => searchController.removeListener(searchControllerListener);
    }, []);

    return Scaffold(
      appBar: isSearchMode.value
          ? AppBar(
              title: TextField(
                controller: searchController,
                focusNode: searchFocusNode,
                decoration: const InputDecoration(hintText: 'Search post'),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    isSearchMode.value = false;
                    searchController.clear();
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            )
          : AppBar(
              title: const Text('Posts'),
              actions: [
                IconButton(
                  onPressed: () {
                    isSearchMode.value = true;
                    searchFocusNode.requestFocus();
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
      body: RefreshIndicator(
        onRefresh: () =>
            ref.refresh(postsProvider(search: search.value).future),
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
