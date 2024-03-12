import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/post.dart';

part 'posts.g.dart';

@riverpod
Future<List<Post>> posts(PostsRef ref, {String? search}) {
  return ref.watch(apiServiceProvider).fetchPosts(search: search);
}
