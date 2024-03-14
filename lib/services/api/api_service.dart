import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/models/login.dart';
import '../../features/profile/models/profile.dart';
import 'api_client.dart';

part 'api_service.g.dart';

/// An API service that handles authentication and exposes an [ApiClient].
///
/// Every API call coming from UI should watch/read this provider instead of
/// instantiating the [ApiClient] itself. When being watched, it will force any
/// data provider (provider that fetches data) to refetch when the
/// authentication state changes.
@Riverpod(keepAlive: true)
class ApiService extends _$ApiService {
  @override
  ApiClient build() => ApiClient();

  /// Updates the state with a new [ApiClient] that uses the provided [token].
  void setToken(String token) {
    state = state.copyWithToken(token);
  }

  /// Attempts a login and updates the state with a new [ApiClient] that
  /// uses the authentication token from the API response. Saves the token to
  /// storage.
  Future<Profile> login(Login data) async {
    final (profile, token) = await state.login(data);

    setToken(token);

    // Save the new [token] to Hive box.
    Hive.box<String>('token').put('current', token);

    return profile;
  }

  /// Invalidates the current state so that the new [ApiClient] exposed by this
  /// provider won't use the previous token anymore. Removes the saved token
  /// from storage.
  void logout() {
    // Delete the current [token] from Hive box.
    Hive.box<String>('token').delete('current');

    // Invalidate the state so that a new client with no token will be created
    // and used as the new state.
    ref.invalidateSelf();
  }
}
