import 'package:dummymart/features/profile/models/profile.dart';
import 'package:dummymart/features/profile/providers/profile.dart';
import 'package:dummymart/features/profile/screens/profile.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test ProfileScreen', () {
    testWidgets(
      'should show the correct profile info',
      (tester) async {
        const profile = Profile(
          id: 12,
          username: 'rhallawellb',
          email: 'rhallawellb@dropbox.com',
          firstName: 'Assunta',
          lastName: 'Rath',
          gender: Gender.female,
          image: 'https://robohash.org/Assunta.png?set=set4',
        );

        await tester.pumpMaterialWidgetScoped(
          const ProfileScreen(),
          overrides: [
            profileProvider.overrideWith((_) => profile),
          ],
        );

        final nameFinder = find.text(profile.fullName);
        final usernameFinder = find.text(profile.username);
        final emailFinder = find.text(profile.email);

        expect(nameFinder, findsWidgets);
        expect(usernameFinder, findsWidgets);
        expect(emailFinder, findsWidgets);
      },
    );
  });
}
