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
class _$MovementTearOff {
  const _$MovementTearOff();

  _Movement call({required Vector2 direction, int count = 1}) {
    return _Movement(
      direction: direction,
      count: count,
    );
  }
}

/// @nodoc
const $Movement = _$MovementTearOff();

/// @nodoc
mixin _$Movement {
  Vector2 get direction => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovementCopyWith<Movement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovementCopyWith<$Res> {
  factory $MovementCopyWith(Movement value, $Res Function(Movement) then) =
      _$MovementCopyWithImpl<$Res>;
  $Res call({Vector2 direction, int count});
}

/// @nodoc
class _$MovementCopyWithImpl<$Res> implements $MovementCopyWith<$Res> {
  _$MovementCopyWithImpl(this._value, this._then);

  final Movement _value;
  // ignore: unused_field
  final $Res Function(Movement) _then;

  @override
  $Res call({
    Object? direction = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Vector2,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MovementCopyWith<$Res> implements $MovementCopyWith<$Res> {
  factory _$MovementCopyWith(_Movement value, $Res Function(_Movement) then) =
      __$MovementCopyWithImpl<$Res>;
  @override
  $Res call({Vector2 direction, int count});
}

/// @nodoc
class __$MovementCopyWithImpl<$Res> extends _$MovementCopyWithImpl<$Res>
    implements _$MovementCopyWith<$Res> {
  __$MovementCopyWithImpl(_Movement _value, $Res Function(_Movement) _then)
      : super(_value, (v) => _then(v as _Movement));

  @override
  _Movement get _value => super._value as _Movement;

  @override
  $Res call({
    Object? direction = freezed,
    Object? count = freezed,
  }) {
    return _then(_Movement(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Vector2,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Movement extends _Movement {
  const _$_Movement({required this.direction, this.count = 1}) : super._();

  @override
  final Vector2 direction;
  @JsonKey(defaultValue: 1)
  @override
  final int count;

  @override
  String toString() {
    return 'Movement(direction: $direction, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movement &&
            const DeepCollectionEquality().equals(other.direction, direction) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(direction),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$MovementCopyWith<_Movement> get copyWith =>
      __$MovementCopyWithImpl<_Movement>(this, _$identity);
}

abstract class _Movement extends Movement {
  const factory _Movement({required Vector2 direction, int count}) =
      _$_Movement;
  const _Movement._() : super._();

  @override
  Vector2 get direction;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$MovementCopyWith<_Movement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PieceTearOff {
  const _$PieceTearOff();

  _Piece call(
      {required String name,
      required List<Movement> movableDirections,
      required String ownerId,
      Vector2? position}) {
    return _Piece(
      name: name,
      movableDirections: movableDirections,
      ownerId: ownerId,
      position: position,
    );
  }
}

/// @nodoc
const $Piece = _$PieceTearOff();

/// @nodoc
mixin _$Piece {
  String get name => throw _privateConstructorUsedError;
  List<Movement> get movableDirections => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  Vector2? get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PieceCopyWith<Piece> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PieceCopyWith<$Res> {
  factory $PieceCopyWith(Piece value, $Res Function(Piece) then) =
      _$PieceCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<Movement> movableDirections,
      String ownerId,
      Vector2? position});
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
    Object? ownerId = freezed,
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
              as List<Movement>,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {String name,
      List<Movement> movableDirections,
      String ownerId,
      Vector2? position});
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
    Object? ownerId = freezed,
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
              as List<Movement>,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector2?,
    ));
  }
}

/// @nodoc

class _$_Piece extends _Piece {
  _$_Piece(
      {required this.name,
      required this.movableDirections,
      required this.ownerId,
      this.position})
      : super._();

  @override
  final String name;
  @override
  final List<Movement> movableDirections;
  @override
  final String ownerId;
  @override
  final Vector2? position;

  @override
  String toString() {
    return 'Piece(name: $name, movableDirections: $movableDirections, ownerId: $ownerId, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Piece &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.movableDirections, movableDirections) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(movableDirections),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$PieceCopyWith<_Piece> get copyWith =>
      __$PieceCopyWithImpl<_Piece>(this, _$identity);
}

abstract class _Piece extends Piece {
  factory _Piece(
      {required String name,
      required List<Movement> movableDirections,
      required String ownerId,
      Vector2? position}) = _$_Piece;
  _Piece._() : super._();

  @override
  String get name;
  @override
  List<Movement> get movableDirections;
  @override
  String get ownerId;
  @override
  Vector2? get position;
  @override
  @JsonKey(ignore: true)
  _$PieceCopyWith<_Piece> get copyWith => throw _privateConstructorUsedError;
}
