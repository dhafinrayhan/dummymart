import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../storage/secure_storage.dart';
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
/// The API client is kept alive to follow dio's recommendation to use the same
/// client instance for the entire app.
@riverpod
ApiClient apiService(ApiServiceRef ref) {
  final token = ref.watch(tokenProvider);

  final ApiClient client;

  const mock = bool.fromEnvironment('MOCK_API', defaultValue: false);
  client = switch (mock) {
    true =>
      token != null ? MockedApiClient.withToken(token) : MockedApiClient(),
    false => token != null ? ApiClient.withToken(token) : ApiClient(),
  };
  ref.keepAlive();

  return client;
}

@riverpod
String? token(TokenRef ref) {
  final secureStorage = ref.watch(secureStorageProvider).requireValue;
  return secureStorage.get('token');
}
