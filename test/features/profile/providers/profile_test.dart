import 'package:dummymart/features/auth/models/login.dart';
import 'package:dummymart/features/auth/providers/auth_state.dart';
import 'package:dummymart/features/profile/models/profile.dart';
import 'package:dummymart/features/profile/providers/profile.dart';
import 'package:dummymart/services/storage/prefs.dart';
import 'package:test/test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test profileProvider', () {
    test('profile should expose profile data after a successful login',
        () async {
      final prefs = await createPrefs();
      final container = createContainer(overrides: [
        prefsProvider.overrideWith((ref) => prefs),
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
