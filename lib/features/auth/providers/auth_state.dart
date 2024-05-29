import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../../../services/storage/secure_storage.dart';
import '../models/auth_state.dart';
import '../models/login.dart';

part 'auth_state.g.dart';

/// The current authentication state of the app.
///
/// This notifier is responsible for saving/removing the token and profile info
/// to the storage through the [login] and [logout] methods.
@riverpod
class CurrentAuthState extends _$CurrentAuthState {
  @override
  AuthState build() {
    final secureStorage = ref.watch(secureStorageProvider).requireValue;
    final token = secureStorage.get('token');
    return token != null ? AuthState.authenticated : AuthState.unauthenticated;
  }

  /// Attempts to log in with [data] and saves the token and profile info to storage.
  /// Will invalidate the state if success.
  Future<void> login(Login data) async {
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final token = await ref.read(apiServiceProvider).login(data);

    // Save the new [token] and [profile] to secure storage.
    secureStorage.set('token', token);

    ref
      // Invalidate the state so the auth state will be updated to authenticated.
      ..invalidateSelf()
      // Invalidate the token provider so the API service will use the new token.
      ..invalidate(tokenProvider);
  }

  /// Logs out, deletes the saved token and profile info from storage, and invalidates
  /// the state.
  void logout() {
    final secureStorage = ref.read(secureStorageProvider).requireValue;

    // Delete the current [token] and [profile] from secure storage.
    secureStorage.remove('token');

    ref
      // Invalidate the state so the auth state will be updated to unauthenticated.
      ..invalidateSelf()
      // Invalidate the token provider so the API service will no longer use the
      // previous token.
      ..invalidate(tokenProvider);
  }
}
