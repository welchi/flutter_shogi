// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HighlightableBoardTileTearOff {
  const _$HighlightableBoardTileTearOff();

  _HighlightableBoardTile call(
      {bool isMovable = false, Piece? piece, required Vector2 position}) {
    return _HighlightableBoardTile(
      isMovable: isMovable,
      piece: piece,
      position: position,
    );
  }
}

/// @nodoc
const $HighlightableBoardTile = _$HighlightableBoardTileTearOff();

/// @nodoc
mixin _$HighlightableBoardTile {
  bool get isMovable => throw _privateConstructorUsedError;
  Piece? get piece => throw _privateConstructorUsedError;
  Vector2 get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HighlightableBoardTileCopyWith<HighlightableBoardTile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightableBoardTileCopyWith<$Res> {
  factory $HighlightableBoardTileCopyWith(HighlightableBoardTile value,
          $Res Function(HighlightableBoardTile) then) =
      _$HighlightableBoardTileCopyWithImpl<$Res>;
  $Res call({bool isMovable, Piece? piece, Vector2 position});

  $PieceCopyWith<$Res>? get piece;
}

/// @nodoc
class _$HighlightableBoardTileCopyWithImpl<$Res>
    implements $HighlightableBoardTileCopyWith<$Res> {
  _$HighlightableBoardTileCopyWithImpl(this._value, this._then);

  final HighlightableBoardTile _value;
  // ignore: unused_field
  final $Res Function(HighlightableBoardTile) _then;

  @override
  $Res call({
    Object? isMovable = freezed,
    Object? piece = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      isMovable: isMovable == freezed
          ? _value.isMovable
          : isMovable // ignore: cast_nullable_to_non_nullable
              as bool,
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Piece?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector2,
    ));
  }

  @override
  $PieceCopyWith<$Res>? get piece {
    if (_value.piece == null) {
      return null;
    }

    return $PieceCopyWith<$Res>(_value.piece!, (value) {
      return _then(_value.copyWith(piece: value));
    });
  }
}

/// @nodoc
abstract class _$HighlightableBoardTileCopyWith<$Res>
    implements $HighlightableBoardTileCopyWith<$Res> {
  factory _$HighlightableBoardTileCopyWith(_HighlightableBoardTile value,
          $Res Function(_HighlightableBoardTile) then) =
      __$HighlightableBoardTileCopyWithImpl<$Res>;
  @override
  $Res call({bool isMovable, Piece? piece, Vector2 position});

  @override
  $PieceCopyWith<$Res>? get piece;
}

/// @nodoc
class __$HighlightableBoardTileCopyWithImpl<$Res>
    extends _$HighlightableBoardTileCopyWithImpl<$Res>
    implements _$HighlightableBoardTileCopyWith<$Res> {
  __$HighlightableBoardTileCopyWithImpl(_HighlightableBoardTile _value,
      $Res Function(_HighlightableBoardTile) _then)
      : super(_value, (v) => _then(v as _HighlightableBoardTile));

  @override
  _HighlightableBoardTile get _value => super._value as _HighlightableBoardTile;

  @override
  $Res call({
    Object? isMovable = freezed,
    Object? piece = freezed,
    Object? position = freezed,
  }) {
    return _then(_HighlightableBoardTile(
      isMovable: isMovable == freezed
          ? _value.isMovable
          : isMovable // ignore: cast_nullable_to_non_nullable
              as bool,
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Piece?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector2,
    ));
  }
}

/// @nodoc

class _$_HighlightableBoardTile implements _HighlightableBoardTile {
  const _$_HighlightableBoardTile(
      {this.isMovable = false, this.piece, required this.position});

  @JsonKey(defaultValue: false)
  @override
  final bool isMovable;
  @override
  final Piece? piece;
  @override
  final Vector2 position;

  @override
  String toString() {
    return 'HighlightableBoardTile(isMovable: $isMovable, piece: $piece, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HighlightableBoardTile &&
            const DeepCollectionEquality().equals(other.isMovable, isMovable) &&
            const DeepCollectionEquality().equals(other.piece, piece) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isMovable),
      const DeepCollectionEquality().hash(piece),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$HighlightableBoardTileCopyWith<_HighlightableBoardTile> get copyWith =>
      __$HighlightableBoardTileCopyWithImpl<_HighlightableBoardTile>(
          this, _$identity);
}

abstract class _HighlightableBoardTile implements HighlightableBoardTile {
  const factory _HighlightableBoardTile(
      {bool isMovable,
      Piece? piece,
      required Vector2 position}) = _$_HighlightableBoardTile;

  @override
  bool get isMovable;
  @override
  Piece? get piece;
  @override
  Vector2 get position;
  @override
  @JsonKey(ignore: true)
  _$HighlightableBoardTileCopyWith<_HighlightableBoardTile> get copyWith =>
      throw _privateConstructorUsedError;
}
