import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_use/flutter_use.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/extensions.dart';
import '../../../utils/hooks.dart';
import '../models/post.dart';
import '../providers/posts.dart';

/// A screen showing posts in a list view, with the ability to load more posts
/// when the user scrolled to the bottom of the list, and allows the user to
/// search with the search bar.
class PostsScreen extends HookConsumerWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Whether the app bar is in search mode (showing search field instead of
    /// the title text).
    final isSearchMode = useState(false);

    final (
      pending: pendingLoadMore,
      snapshot: loadMoreSnapshot,
      hasError: _,
    ) = useAsyncTask();

    /// The search query that will be passed to the provider.
    final search = useState('');

    /// The controller for the search field, wrapped with [useListenable] to trigger
    /// rebuild whenever the value changes, which will cause the debouncer below to
    /// fire.
    final searchController = useListenable(useTextEditingController());

    useDebounce(
      () => search.value = searchController.text,
      const Duration(milliseconds: 500),
      [searchController.text],
    );

    final posts = ref.watch(postsProvider(search: search.value));

    Future<void> loadMore() async {
      await ref.read(postsProvider(search: search.value).notifier).loadMore();
    }

    return Scaffold(
      appBar: isSearchMode.value
          ? AppBar(
              title: TextField(
                controller: searchController,
                decoration: const InputDecoration(
                  hintText: 'Search post',
                  border: UnderlineInputBorder(),
                ),
                autofocus: true,
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
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
      body: NotificationListener<ScrollEndNotification>(
        onNotification: (notification) {
          // Use this check to prevent requesting "load more" twice in a single
          // max scroll event.
          if (loadMoreSnapshot.connectionState != ConnectionState.waiting) {
            final ScrollMetrics(:pixels, :maxScrollExtent) =
                notification.metrics;
            if (pixels >= maxScrollExtent) {
              pendingLoadMore.value = loadMore();
            }
          }

          return true;
        },
        child: RefreshIndicator(
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
                    child: SizedBox.square(
                      dimension: 36,
                      child: loadMoreSnapshot.connectionState ==
                              ConnectionState.waiting
                          ? const CircularProgressIndicator()
                          : const SizedBox(),
                    ),
                  );
                }

                return _PostListTile(posts[index]);
              },
            ),
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
      subtitle: Wrap(
        spacing: 4,
        children: [for (final tag in post.tags) _PostTag(tag)],
      ),
    );
  }
}

class _PostTag extends StatelessWidget {
  const _PostTag(this.tag);

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: context.colorScheme.secondaryContainer.withOpacity(0.7),
      ),
      child: Text(
        tag,
        style: TextStyle(
          fontSize: 11,
          color: context.colorScheme.onSecondaryContainer,
        ),
      ),
    );
  }
}
