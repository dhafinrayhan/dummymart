import 'package:dummymart/services/api/mock/mocked_api_client.dart';
import 'package:dummymart/services/storage/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Creates a [ProviderContainer] and automatically disposes it at the end of
/// the test.
ProviderContainer createContainer({
  ProviderContainer? parent,
  List<Override> overrides = const [],
  List<ProviderObserver>? observers,
}) {
  // Create a ProviderContainer, and optionally allow specifying parameters.
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides,
    observers: observers,
  );

  // When the test ends, dispose the container.
  addTearDown(container.dispose);

  return container;
}

Future<SharedPreferences> createPrefs({
  Map<String, Object>? initialValues,
}) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues(initialValues ?? {});
  return await SharedPreferences.getInstance();
}

Future<SecureStorage> createSecureStorage({
  required Set<String> keys,
  Map<String, String>? initialValues,
}) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  FlutterSecureStorage.setMockInitialValues(initialValues ?? {});
  return await SecureStorage.getInstance(keys: keys);
}

/// Creates a [MockedApiClient] with the given [delay] as the duration before
/// each API call returns a value.
MockedApiClient createMockedApiClient({
  Duration delay = const Duration(milliseconds: 50),
}) {
  return MockedApiClient(delay: delay);
}

/// Creates a [MockedApiClient] for a provider override with the given [delay]
/// as the duration before each API call returns a value.
MockedApiClient createMockedApiClientOverride(
  AutoDisposeProviderRef<Object?> ref, {
  Duration delay = const Duration(milliseconds: 50),
}) {
  ref.keepAlive();
  return createMockedApiClient(delay: delay);
}

extension WidgetTesterX on WidgetTester {
  /// Calls [pumpWidget] with the [widget] wrapped in a [MaterialApp].
  Future<void> pumpMaterialWidget(
    Widget widget, {
    Duration? duration,
    EnginePhase phase = EnginePhase.sendSemanticsUpdate,
  }) =>
      pumpWidget(MaterialApp(home: widget), duration: duration, phase: phase);

  /// Calls [pumpWidget] with the [widget] wrapped in a [MaterialApp] and scoped
  /// with a [ProviderScope].
  ///
  /// The [overrides] and [observers] values will be passed to the [ProviderScope].
  Future<void> pumpMaterialWidgetScoped(
    Widget widget, {
    Duration? duration,
    EnginePhase phase = EnginePhase.sendSemanticsUpdate,
    List<Override> overrides = const [],
    List<ProviderObserver>? observers,
  }) =>
      pumpWidget(
        ProviderScope(
          overrides: overrides,
          observers: observers,
          child: MaterialApp(home: widget),
        ),
        duration: duration,
        phase: phase,
      );
}
