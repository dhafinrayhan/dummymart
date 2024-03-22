import 'package:dummymart/services/api/mock/mocked_api_client.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test/test.dart';

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

/// Initializes Hive and automatically deletes all boxes at the end of the test.
Future<void> setupHive(AsyncCallback onInit) async {
  final pathIdentifier = (_parallelCount++).toString().padLeft(3, '0');
  Hive.init('.test-cache/temp-$pathIdentifier');
  addTearDown(() {
    Hive.deleteFromDisk();
    Hive.resetAdapters();
  });
  await onInit();
}

/// Creates a [MockedApiClient] with the given [delay] as the duration before
/// each API call returns a value.
MockedApiClient createMockedApiClient({
  Duration delay = const Duration(milliseconds: 200),
}) {
  return MockedApiClient(delay: delay);
}
