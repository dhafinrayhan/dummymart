import 'package:dummymart/services/api/mock/mocked_api_client.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test/test.dart';

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

/// Initializes Hive temporarily and opens a box. Will delete the box after
/// the current test.
Future<Box<E>> openTemporaryBox<E>(String name) async {
  Hive.init('.test-cache/temporaryPath');
  final box = await Hive.openBox<E>(name);

  addTearDown(Hive.deleteFromDisk);

  return box;
}

/// Creates a [MockedApiClient] with the given [delay] as the duration before
/// each API call returns a value.
MockedApiClient createMockedApiClient({
  Duration delay = const Duration(milliseconds: 200),
}) {
  return MockedApiClient(delay: delay);
}
