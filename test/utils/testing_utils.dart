import 'package:dummymart/services/api/mock/mocked_api_client.dart';
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

/// Initializes Hive temporarily and opens a box. Will delete the box after
/// the current test.
Future<Box<E>> openTemporaryBox<E>(
  String name, {
  /// A callback called after initializing Hive. Generally used to register
  /// adapters.
  void Function()? onInit,
}) {
  final pathIdentifier = (_parallelCount++).toString().padLeft(3, '0');
  Hive.init('.test-cache/temp-$pathIdentifier');
  addTearDown(Hive.deleteFromDisk);
  onInit?.call();

  return Hive.openBox<E>(name);
}

Future<(Box<E1>, Box<E2>)> openTemporaryBox2<E1, E2>(
  String name1,
  String name2, {
  void Function()? onInit,
}) {
  final pathIdentifier = (_parallelCount++).toString().padLeft(3, '0');
  Hive.init('.test-cache/temp-$pathIdentifier');
  addTearDown(Hive.deleteFromDisk);
  onInit?.call();

  return (
    Hive.openBox<E1>(name1),
    Hive.openBox<E2>(name2),
  ).wait;
}

/// Creates a [MockedApiClient] with the given [delay] as the duration before
/// each API call returns a value.
MockedApiClient createMockedApiClient({
  Duration delay = const Duration(milliseconds: 200),
}) {
  return MockedApiClient(delay: delay);
}
