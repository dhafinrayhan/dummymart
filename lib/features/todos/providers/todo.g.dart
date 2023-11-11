// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoHash() => r'a2460beca75904d0cdbf9901ab4f7872e3a64821';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [todo].
@ProviderFor(todo)
const todoProvider = TodoFamily();

/// See also [todo].
class TodoFamily extends Family<AsyncValue<Todo>> {
  /// See also [todo].
  const TodoFamily();

  /// See also [todo].
  TodoProvider call(
    int id,
  ) {
    return TodoProvider(
      id,
    );
  }

  @override
  TodoProvider getProviderOverride(
    covariant TodoProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'todoProvider';
}

/// See also [todo].
class TodoProvider extends AutoDisposeFutureProvider<Todo> {
  /// See also [todo].
  TodoProvider(
    int id,
  ) : this._internal(
          (ref) => todo(
            ref as TodoRef,
            id,
          ),
          from: todoProvider,
          name: r'todoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$todoHash,
          dependencies: TodoFamily._dependencies,
          allTransitiveDependencies: TodoFamily._allTransitiveDependencies,
          id: id,
        );

  TodoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Todo> Function(TodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TodoProvider._internal(
        (ref) => create(ref as TodoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Todo> createElement() {
    return _TodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TodoRef on AutoDisposeFutureProviderRef<Todo> {
  /// The parameter `id` of this provider.
  int get id;
}

class _TodoProviderElement extends AutoDisposeFutureProviderElement<Todo>
    with TodoRef {
  _TodoProviderElement(super.provider);

  @override
  int get id => (origin as TodoProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
