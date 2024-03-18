import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/profile.dart';

part 'profile.g.dart';

@riverpod
Profile? currentProfile(CurrentProfileRef ref) {
  final profile = Hive.box<Profile>('profile').get('current');
  return profile;
}
