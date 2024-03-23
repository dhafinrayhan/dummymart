import 'package:dummymart/features/profile/models/profile.dart';
import 'package:dummymart/features/profile/providers/profile.dart';
import 'package:dummymart/features/profile/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test ProfileScreen', () {
    testWidgets(
      'should show the correct profile info',
      (tester) async {
        await setupHiveFlutter(tester, () async {
          await Hive.openBox<String>('settings');
        });

        const profile = Profile(
          id: 12,
          username: 'rhallawellb',
          email: 'rhallawellb@dropbox.com',
          firstName: 'Assunta',
          lastName: 'Rath',
          gender: Gender.female,
          image: 'https://robohash.org/Assunta.png?set=set4',
        );

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              profileProvider.overrideWithValue(profile),
            ],
            child: const MaterialApp(home: ProfileScreen()),
          ),
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
