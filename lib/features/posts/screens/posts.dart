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
    /// Whether the app bar is in search mode (showing search field instead of
    /// the title text).
    final isSearchMode = useState(false);

    /// Whether the request to load more is on loading state.
    final isLoadingMore = useState(false);

    /// The search query that will be passed to the provider.
    final search = useState('');

    final searchController = useTextEditingController();
    final searchFocusNode = useFocusNode();

    final posts = ref.watch(postsProvider(search: search.value));

    // Register a listener on [searchController] so the search query will be
    // updated based on the latest input with debounce mechanism.
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

    Future<void> loadMore() async {
      isLoadingMore.value = true;
      await ref.read(postsProvider(search: search.value).notifier).loadMore();
      isLoadingMore.value = false;
    }

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
          skipLoadingOnReload: true,
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (_, __) => const Center(child: Text('An error occured')),
          data: (posts) => ListView.builder(
            itemCount: posts.length + 1,
            itemBuilder: (_, index) {
              // Show a "load more" button at the bottom of the list.
              if (index == posts.length) {
                return Center(
                  child: isLoadingMore.value
                      ? const CircularProgressIndicator()
                      : TextButton(
                          onPressed: loadMore,
                          child: const Text('Load more'),
                        ),
                );
              }

              return _PostListTile(posts[index]);
            },
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
