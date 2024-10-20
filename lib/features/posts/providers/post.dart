import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/post.dart';

part 'post.g.dart';

@riverpod
Future<Post> post(Ref ref, int id) =>
    ref.watch(apiServiceProvider).fetchPost(id);
