import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/profile.dart';

part 'profile.g.dart';

/// The profile info of the currently logged in user.
@riverpod
Profile? profile(ProfileRef ref) => Hive.box<Profile>('profile').get('current');
