import 'package:dummymart/features/auth/models/login.dart';
import 'package:dummymart/features/auth/providers/auth_state.dart';
import 'package:dummymart/features/profile/models/profile.dart';
import 'package:dummymart/features/profile/providers/profile.dart';
import 'package:hive/hive.dart';
import 'package:test/test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test profileProvider', () {
    test('profile should initially be null before login', () async {
      await setupHive(() async {
        Hive.registerAdapter(ProfileAdapter());
        Hive.registerAdapter(GenderAdapter());

        await [
          Hive.openBox<Profile>('profile'),
        ].wait;
      });

      final container = createContainer();

      expect(
        container.read(profileProvider),
        isNull,
      );
    });

    test('profile should be non-null after a successful login', () async {
      await setupHive(() async {
        Hive.registerAdapter(ProfileAdapter());
        Hive.registerAdapter(GenderAdapter());

        await [
          Hive.openBox<String>('token'),
          Hive.openBox<Profile>('profile'),
        ].wait;
      });

      final container = createContainer();

      await container
          .read(currentAuthStateProvider.notifier)
          .login(Login(username: 'kminchelle', password: '0lelplR'));
      expect(
        container.read(profileProvider),
        isA<Profile>(),
      );
    });
  });
}
