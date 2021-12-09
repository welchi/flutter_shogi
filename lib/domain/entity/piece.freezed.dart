// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'piece.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PieceTearOff {
  const _$PieceTearOff();

  _Piece call(
      {required String name,
      required List<Vector2> movableDirections,
      Vector2? position}) {
    return _Piece(
      name: name,
      movableDirections: movableDirections,
      position: position,
    );
  }
}

/// @nodoc
const $Piece = _$PieceTearOff();

/// @nodoc
mixin _$Piece {
  String get name => throw _privateConstructorUsedError;
  List<Vector2> get movableDirections => throw _privateConstructorUsedError;
  Vector2? get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PieceCopyWith<Piece> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PieceCopyWith<$Res> {
  factory $PieceCopyWith(Piece value, $Res Function(Piece) then) =
      _$PieceCopyWithImpl<$Res>;
  $Res call({String name, List<Vector2> movableDirections, Vector2? position});
}

/// @nodoc
class _$PieceCopyWithImpl<$Res> implements $PieceCopyWith<$Res> {
  _$PieceCopyWithImpl(this._value, this._then);

  final Piece _value;
  // ignore: unused_field
  final $Res Function(Piece) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? movableDirections = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      movableDirections: movableDirections == freezed
          ? _value.movableDirections
          : movableDirections // ignore: cast_nullable_to_non_nullable
              as List<Vector2>,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector2?,
    ));
  }
}

/// @nodoc
abstract class _$PieceCopyWith<$Res> implements $PieceCopyWith<$Res> {
  factory _$PieceCopyWith(_Piece value, $Res Function(_Piece) then) =
      __$PieceCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<Vector2> movableDirections, Vector2? position});
}

/// @nodoc
class __$PieceCopyWithImpl<$Res> extends _$PieceCopyWithImpl<$Res>
    implements _$PieceCopyWith<$Res> {
  __$PieceCopyWithImpl(_Piece _value, $Res Function(_Piece) _then)
      : super(_value, (v) => _then(v as _Piece));

  @override
  _Piece get _value => super._value as _Piece;

  @override
  $Res call({
    Object? name = freezed,
    Object? movableDirections = freezed,
    Object? position = freezed,
  }) {
    return _then(_Piece(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      movableDirections: movableDirections == freezed
          ? _value.movableDirections
          : movableDirections // ignore: cast_nullable_to_non_nullable
              as List<Vector2>,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector2?,
    ));
  }
}

/// @nodoc

class _$_Piece extends _Piece {
  const _$_Piece(
      {required this.name, required this.movableDirections, this.position})
      : super._();

  @override
  final String name;
  @override
  final List<Vector2> movableDirections;
  @override
  final Vector2? position;

  @override
  String toString() {
    return 'Piece(name: $name, movableDirections: $movableDirections, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Piece &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.movableDirections, movableDirections) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(movableDirections),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$PieceCopyWith<_Piece> get copyWith =>
      __$PieceCopyWithImpl<_Piece>(this, _$identity);
}

abstract class _Piece extends Piece {
  const factory _Piece(
      {required String name,
      required List<Vector2> movableDirections,
      Vector2? position}) = _$_Piece;
  const _Piece._() : super._();

  @override
  String get name;
  @override
  List<Vector2> get movableDirections;
  @override
  Vector2? get position;
  @override
  @JsonKey(ignore: true)
  _$PieceCopyWith<_Piece> get copyWith => throw _privateConstructorUsedError;
}
