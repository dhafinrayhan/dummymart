// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_bar_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavBarItem {
  /// Path in the router.
  String get path => throw _privateConstructorUsedError;

  /// Widget to show when navigating to this [path].
  Widget get widget => throw _privateConstructorUsedError;

  /// Icon in the navigation bar.
  IconData get icon => throw _privateConstructorUsedError;

  /// Label in the navigation bar.
  String get label => throw _privateConstructorUsedError;

  /// The subroutes of the route from this [path].
  List<RouteBase> get routes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavBarItemCopyWith<NavBarItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavBarItemCopyWith<$Res> {
  factory $NavBarItemCopyWith(
          NavBarItem value, $Res Function(NavBarItem) then) =
      _$NavBarItemCopyWithImpl<$Res, NavBarItem>;
  @useResult
  $Res call(
      {String path,
      Widget widget,
      IconData icon,
      String label,
      List<RouteBase> routes});
}

/// @nodoc
class _$NavBarItemCopyWithImpl<$Res, $Val extends NavBarItem>
    implements $NavBarItemCopyWith<$Res> {
  _$NavBarItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? widget = null,
    Object? icon = null,
    Object? label = null,
    Object? routes = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      widget: null == widget
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Widget,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      routes: null == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<RouteBase>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavBarItemImplCopyWith<$Res>
    implements $NavBarItemCopyWith<$Res> {
  factory _$$NavBarItemImplCopyWith(
          _$NavBarItemImpl value, $Res Function(_$NavBarItemImpl) then) =
      __$$NavBarItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String path,
      Widget widget,
      IconData icon,
      String label,
      List<RouteBase> routes});
}

/// @nodoc
class __$$NavBarItemImplCopyWithImpl<$Res>
    extends _$NavBarItemCopyWithImpl<$Res, _$NavBarItemImpl>
    implements _$$NavBarItemImplCopyWith<$Res> {
  __$$NavBarItemImplCopyWithImpl(
      _$NavBarItemImpl _value, $Res Function(_$NavBarItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? widget = null,
    Object? icon = null,
    Object? label = null,
    Object? routes = null,
  }) {
    return _then(_$NavBarItemImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      widget: null == widget
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Widget,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      routes: null == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<RouteBase>,
    ));
  }
}

/// @nodoc

class _$NavBarItemImpl implements _NavBarItem {
  _$NavBarItemImpl(
      {required this.path,
      required this.widget,
      required this.icon,
      required this.label,
      final List<RouteBase> routes = const <RouteBase>[]})
      : _routes = routes;

  /// Path in the router.
  @override
  final String path;

  /// Widget to show when navigating to this [path].
  @override
  final Widget widget;

  /// Icon in the navigation bar.
  @override
  final IconData icon;

  /// Label in the navigation bar.
  @override
  final String label;

  /// The subroutes of the route from this [path].
  final List<RouteBase> _routes;

  /// The subroutes of the route from this [path].
  @override
  @JsonKey()
  List<RouteBase> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  @override
  String toString() {
    return 'NavBarItem(path: $path, widget: $widget, icon: $icon, label: $label, routes: $routes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavBarItemImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.widget, widget) || other.widget == widget) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, widget, icon, label,
      const DeepCollectionEquality().hash(_routes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavBarItemImplCopyWith<_$NavBarItemImpl> get copyWith =>
      __$$NavBarItemImplCopyWithImpl<_$NavBarItemImpl>(this, _$identity);
}

abstract class _NavBarItem implements NavBarItem {
  factory _NavBarItem(
      {required final String path,
      required final Widget widget,
      required final IconData icon,
      required final String label,
      final List<RouteBase> routes}) = _$NavBarItemImpl;

  @override

  /// Path in the router.
  String get path;
  @override

  /// Widget to show when navigating to this [path].
  Widget get widget;
  @override

  /// Icon in the navigation bar.
  IconData get icon;
  @override

  /// Label in the navigation bar.
  String get label;
  @override

  /// The subroutes of the route from this [path].
  List<RouteBase> get routes;
  @override
  @JsonKey(ignore: true)
  _$$NavBarItemImplCopyWith<_$NavBarItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
