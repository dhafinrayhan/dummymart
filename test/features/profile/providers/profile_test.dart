import 'package:dummymart/features/auth/models/login.dart';
import 'package:dummymart/features/profile/models/profile.dart';
import 'package:dummymart/features/profile/providers/profile.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:dummymart/services/auth_state.dart';
import 'package:dummymart/services/storage/prefs.dart';
import 'package:dummymart/services/storage/secure_storage.dart';
import 'package:test/test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test profileProvider', () {
    test('profile should expose profile data after a successful login',
        () async {
      final (prefs, secureStorage) =
          await (createPrefs(), createSecureStorage(keys: {'token'})).wait;
      final container = createContainer(overrides: [
        prefsProvider.overrideWith((ref) => prefs),
        secureStorageProvider.overrideWith((ref) => secureStorage),
        apiServiceProvider.overrideWith(
            (ref) => createMockedApiClientOverride(ref, allowAuth: true)),
      ]);

      await container
          .read(currentAuthStateProvider.notifier)
          .login(Login(username: 'kminchelle', password: '0lelplR'));

      await expectLater(
        container.read(profileProvider.future),
        completion(isA<Profile>()),
      );
    });
  });
}
