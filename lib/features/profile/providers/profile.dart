import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/profile.dart';

part 'profile.g.dart';

/// The profile info of the currently logged in user.
@riverpod
Future<Profile> profile(Ref ref) async {
  final profile = await ref.watch(apiServiceProvider).fetchProfile();
  ref.keepAlive();

  return profile;
}
