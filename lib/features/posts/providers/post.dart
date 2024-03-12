import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/post.dart';

part 'post.g.dart';

@riverpod
Future<Post> post(PostRef ref, int id) =>
    ref.watch(apiServiceProvider).fetchPost(id);
