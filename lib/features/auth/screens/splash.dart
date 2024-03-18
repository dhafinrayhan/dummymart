import 'package:flutter/material.dart';

/// The screen shown at the beginning after the app is launched.
///
/// This screen is not meant to be the usual "splash screen" where it shows some
/// logo or animation representing the app's brand, but rather it's used as a
/// temporary screen to show when the authentication state is still unknown and
/// the app needs to determine what authentication state should be used.
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
