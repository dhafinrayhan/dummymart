import 'package:dummymart/services/api/mock/mocked_api_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Number of parallel test run, used when creating temporary path for Hive to
/// prevent locking each other.
int _parallelCount = 0;

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

void _setupHive() {
  final pathIdentifier = (_parallelCount++).toString().padLeft(3, '0');
  Hive.init('.test-cache/temp-$pathIdentifier');
  addTearDown(() {
    Hive.deleteFromDisk();
    Hive.resetAdapters();
  });
}

/// Initializes Hive for unit test and automatically deletes all boxes at the
/// end of the test.
///
/// The [onInit] callback is typically used for registering adapters and opening
/// boxes.
Future<void> setupHive(AsyncCallback onInit) async {
  _setupHive();
  await onInit();
}

/// Initializes Hive for widget & integration test and automatically deletes all
/// boxes at the end of the test.
///
/// The [onInit] callback is typically used for registering adapters and opening
/// boxes.
Future<void> setupHiveFlutter(WidgetTester tester, AsyncCallback onInit) async {
  _setupHive();
  await tester.runAsync(onInit);
}

/// Creates a [MockedApiClient] with the given [delay] as the duration before
/// each API call returns a value.
MockedApiClient createMockedApiClient({
  Duration delay = const Duration(milliseconds: 200),
}) {
  return MockedApiClient(delay: delay);
}

extension WidgetTesterX on WidgetTester {
  /// Calls [pumpWidget] with the [widget] wrapped in a [MaterialApp].
  Future<void> pumpMaterialWidget(
    Widget widget, [
    Duration? duration,
    EnginePhase phase = EnginePhase.sendSemanticsUpdate,
  ]) =>
      pumpWidget(MaterialApp(home: widget), duration, phase);

  /// Calls [pumpWidget] with the [widget] wrapped in a [MaterialApp] and scoped
  /// with a [ProviderScope].
  ///
  /// The [overrides] and [observers] values will be passed to the
  /// [ProviderScope].
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
        duration,
        phase,
      );
}
