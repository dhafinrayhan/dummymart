import 'package:dummymart/features/auth/models/auth_state.dart';
import 'package:dummymart/features/auth/models/login.dart';
import 'package:dummymart/features/auth/providers/auth_state.dart';
import 'package:dummymart/features/profile/models/profile.dart';
import 'package:hive/hive.dart';
import 'package:test/test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test CurrentAuthState notifier and provider', () {
    test('login and logout should work', () async {
      await setupHive(() async {
        Hive.registerAdapter(ProfileAdapter());
        Hive.registerAdapter(GenderAdapter());

        await [
          Hive.openBox<String>('token'),
          Hive.openBox<Profile>('profile'),
        ].wait;
      });

      final container = createContainer();

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
