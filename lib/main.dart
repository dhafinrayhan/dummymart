import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/settings/providers/settings.dart';
import 'services/router.dart';
import 'services/storage/prefs.dart';
import 'services/storage/secure_storage.dart';
import 'utils/methods.dart';
import 'utils/provider_observer.dart';

Future<void> main() async {
  // Some packages, like Hive (through its `initFlutter` method), call this
  // internally. This could make the illusion that we don't need to call it,
  // when some other packages actually need this to be called, but no error
  // occurred because of those internal calls from the packages that call it. So
  // it's always a good idea to call this ourself to prevent undesired or
  // unpredictable behavior if in the future packages are being added/removed.
  WidgetsFlutterBinding.ensureInitialized();

  HttpOverrides.global = _HttpOverrides();

  prefs = await SharedPreferences.getInstance();
  secureStorage = await SecureStorage.getInstance(keys: {'token'});

  runApp(ProviderScope(
    observers: [AppProviderObserver()],
    child: const DummyMartApp(),
  ));
}

class DummyMartApp extends HookConsumerWidget {
  const DummyMartApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(currentThemeModeProvider);

    final (lightTheme, darkTheme) = useMemoized(() => createDualThemeData(
          seedColor: Colors.blue,
          useMaterial3: true,
          transformer: (data) => data.copyWith(
            inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(),
            ),
          ),
        ));

    return MaterialApp.router(
      title: 'DummyMart',
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

class _HttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (_, __, ___) => true;
  }
}
