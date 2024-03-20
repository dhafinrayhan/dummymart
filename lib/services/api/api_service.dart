import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/models/login.dart';
import '../../features/profile/models/profile.dart';
import 'api_client.dart';
import 'mock/mocked_api_client.dart';

part 'api_service.g.dart';

/// An API service that handles authentication and exposes an [ApiClient].
///
/// Every API call coming from UI should watch/read this provider instead of
/// instantiating the [ApiClient] itself. When being watched, it will force any
/// data provider (provider that fetches data) to refetch when the
/// authentication state changes.
///
/// This service is responsible for saving/removing the token and profile info
/// to the storage.
///
/// The provider is kept alive to follow dio's recommendation to use the same
/// client instance for the entire app. Technically, this would still work
/// without keepAlive set to true.
@Riverpod(keepAlive: true)
class ApiService extends _$ApiService {
  static const mock = bool.fromEnvironment('MOCK_API', defaultValue: false);

  final _tokenBox = Hive.box<String>('token');
  final _profileBox = Hive.box<Profile>('profile');

  @override
  ApiClient build() {
    final token = _tokenBox.get('current');

    if (mock) return MockedApiClient();
    return token != null ? ApiClient.withToken(token) : ApiClient();
  }

  /// Attempts a login and saves the token and profile info to storage. Will
  /// invalidate the state so that the [ApiClient] will be updated to a new one
  /// based on the saved token.
  Future<Profile> login(Login data) async {
    final (profile, token) = await state.login(data);

    // Save the new [token] and [profile] to Hive box.
    _tokenBox.put('current', token);
    _profileBox.put('current', profile);

    // Invalidate the state to get a new client that uses the new token.
    ref.invalidateSelf();

    return profile;
  }

  /// Deletes the saved the token and profile info from storage and invalidates
  /// the state so that the [ApiClient] will be updated to a new one that
  /// doesn't use the previous token.
  void logout() {
    // Delete the current [token] and [profile] from Hive box.
    _tokenBox.delete('current');
    _profileBox.delete('current');

    // Invalidate the state so that a new client with no token will be created
    // and used as the new state.
    ref.invalidateSelf();
  }
}
