import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../../profile/models/profile.dart';
import '../../profile/providers/profile.dart';
import '../models/auth_state.dart';
import '../models/login.dart';

part 'auth_state.g.dart';

/// The current authentication state of the app.
///
/// This notifier does not restore/save states by its own. Restore/save must be
/// explicitly called externally.
@Riverpod(keepAlive: true)
class CurrentAuthState extends _$CurrentAuthState {
  @override
  AuthState build() => AuthState.unknown;

  /// Attempts to login with [data], saves the profile info when success and
  /// restores the profile.
  Future<void> login(Login data) async {
    final profile = await ref.read(apiServiceProvider.notifier).login(data);

    // Save the new [Profile] to Hive box.
    Hive.box<Profile>('profile').put('current', profile);

    restore(profile);
  }

  /// Logouts and removes the saved profile.
  void logout() {
    ref.read(apiServiceProvider.notifier).logout();

    // Delete the saved [Profile] from Hive box.
    Hive.box<Profile>('profile').delete('current');

    reset();
  }

  /// Restores the current profile from [profile] and sets the authentication
  /// state to [AuthState.authenticated].
  void restore(Profile profile) {
    ref.read(currentProfileProvider.notifier).set(profile);

    state = AuthState.authenticated;
  }

  /// Invalidates the current profile and sets the authentication state to
  /// [AuthState.unauthenticated].
  void reset() {
    ref.invalidate(currentProfileProvider);

    state = AuthState.unauthenticated;
  }
}
