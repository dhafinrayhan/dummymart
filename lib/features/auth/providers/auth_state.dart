import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/auth_state.dart';
import '../models/login.dart';

part 'auth_state.g.dart';

/// The current authentication state of the app.
///
/// This notifier does not restore/save states by its own. Restore/save must be
/// explicitly called externally.
@riverpod
class CurrentAuthState extends _$CurrentAuthState {
  final _tokenBox = Hive.box<String>('token');

  @override
  AuthState build() {
    final token = _tokenBox.get('current');
    return token != null ? AuthState.authenticated : AuthState.unauthenticated;
  }

  /// Attempts to login with [data], saves the profile info when success and
  /// restores the profile.
  Future<void> login(Login data) async {
    await ref.read(apiServiceProvider.notifier).login(data);
    ref.invalidateSelf();
  }

  /// Logouts and removes the saved profile.
  void logout() {
    ref.read(apiServiceProvider.notifier).logout();
    ref.invalidateSelf();
  }
}
