import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/post.dart';

part 'posts.g.dart';

@riverpod
class Posts extends _$Posts {
  static const defaultLimit = 15;

  @override
  Future<List<Post>> build({String? search}) {
    return ref
        .watch(apiServiceProvider)
        .fetchPosts(search: search, limit: defaultLimit);
  }

  Future<void> loadMore() async {
    final newLimit = (await future).length + defaultLimit;

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return ref
          .read(apiServiceProvider)
          .fetchPosts(search: search, limit: newLimit);
    });
  }
}
