import 'package:dummymart/features/login/models/login.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:dummymart/services/auth_state.dart';
import 'package:dummymart/services/storage/secure_storage.dart';
import 'package:test/test.dart';

import '../utils/testing_utils.dart';

void main() {
  group('Test CurrentAuthState notifier and provider', () {
    test('login and logout should work', () async {
      final secureStorage = await createSecureStorage(keys: {'token'});
      final container = createContainer(overrides: [
        secureStorageProvider.overrideWith((ref) => secureStorage),
        apiServiceProvider.overrideWith(createMockedApiClientOverride),
      ]);

      expect(
        container.read(currentAuthStateProvider),
        equals(AuthState.unauthenticated),
      );

      await container
          .read(currentAuthStateProvider.notifier)
          .login(Login(username: 'kminchelle', password: '0lelplR'));
      expect(
        container.read(currentAuthStateProvider),
        equals(AuthState.authenticated),
      );

      container.read(currentAuthStateProvider.notifier).logout();
      expect(
        container.read(currentAuthStateProvider),
        equals(AuthState.unauthenticated),
      );
    });
  });
}
