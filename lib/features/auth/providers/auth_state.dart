import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api_client.dart';
import '../../profile/models/profile.dart';
import '../../profile/providers/profile.dart';
import '../models/auth_state.dart';
import '../models/login.dart';

part 'auth_state.g.dart';

@Riverpod(keepAlive: true)
class CurrentAuthState extends _$CurrentAuthState {
  @override
  AuthState build() => AuthState.unknown;

  Future<void> login(Login data) async {
    final profile = await ref.read(apiClientProvider.notifier).login(data);

    // Save the new [Profile] to Hive box.
    final box = Hive.box<Profile>('profile');
    box.put('current', profile);

    restore(profile);
  }

  void logout() {
    ref.read(apiClientProvider.notifier).logout();

    // Delete the saved [Profile] from Hive box.
    final box = Hive.box<Profile>('profile');
    box.delete('current');

    reset();
  }

  void restore(Profile profile) {
    ref.read(currentProfileProvider.notifier).set(profile);

    state = AuthState.authenticated;
  }

  void reset() {
    ref.invalidate(currentProfileProvider);

    state = AuthState.unauthenticated;
  }
}
