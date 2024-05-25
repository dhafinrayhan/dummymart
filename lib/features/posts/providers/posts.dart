import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/post.dart';

part 'posts.g.dart';

@riverpod
class Posts extends _$Posts {
  static const int itemsPerPage = 15;

  @override
  Future<List<Post>> build({String? search}) {
    return ref
        .watch(apiServiceProvider)
        .fetchPosts(search: search, limit: itemsPerPage);
  }

  Future<void> loadMore() async {
    final oldItems = await future;

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final nextItems = await ref.read(apiServiceProvider).fetchPosts(
            search: search,
            skip: oldItems.length,
            limit: itemsPerPage,
          );
      return [...oldItems, ...nextItems];
    });
  }
}
