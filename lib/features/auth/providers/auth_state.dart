import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/auth_state.dart';
import '../models/login.dart';

part 'auth_state.g.dart';

/// The current authentication state of the app.
///
/// This notifier is responsible for saving/removing the token and profile info
/// to the storage through the [login] and [logout] methods.
@riverpod
class CurrentAuthState extends _$CurrentAuthState {
  final _tokenBox = Hive.box<String>('token');

  @override
  AuthState build() {
    final token = _tokenBox.get('current');
    return token != null ? AuthState.authenticated : AuthState.unauthenticated;
  }

  /// Attempts to log in with [data] and saves the token and profile info to storage.
  /// Will invalidate the state if success.
  Future<void> login(Login data) async {
    final token = await ref.read(apiServiceProvider).login(data);

    // Save the new [token] and [profile] to Hive box.
    _tokenBox.put('current', token);

    ref
      // Invalidate the state so the auth state will be updated to authenticated.
      ..invalidateSelf()
      // Invalidate the API service so that it will use the new token.
      ..invalidate(apiServiceProvider);
  }

  /// Logs out, deletes the saved token and profile info from storage, and invalidates
  /// the state.
  void logout() {
    // Delete the current [token] and [profile] from Hive box.
    _tokenBox.delete('current');

    ref
      // Invalidate the state so the auth state will be updated to unauthenticated.
      ..invalidateSelf()
      // Invalidate the API service so that it will no longer use the previous token.
      ..invalidate(apiServiceProvider);
  }
}
