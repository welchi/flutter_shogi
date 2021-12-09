// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BoardTearOff {
  const _$BoardTearOff();

  _Board call({required List<List<Tile>> tiles}) {
    return _Board(
      tiles: tiles,
    );
  }
}

/// @nodoc
const $Board = _$BoardTearOff();

/// @nodoc
mixin _$Board {
  List<List<Tile>> get tiles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardCopyWith<Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardCopyWith<$Res> {
  factory $BoardCopyWith(Board value, $Res Function(Board) then) =
      _$BoardCopyWithImpl<$Res>;
  $Res call({List<List<Tile>> tiles});
}

/// @nodoc
class _$BoardCopyWithImpl<$Res> implements $BoardCopyWith<$Res> {
  _$BoardCopyWithImpl(this._value, this._then);

  final Board _value;
  // ignore: unused_field
  final $Res Function(Board) _then;

  @override
  $Res call({
    Object? tiles = freezed,
  }) {
    return _then(_value.copyWith(
      tiles: tiles == freezed
          ? _value.tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as List<List<Tile>>,
    ));
  }
}

/// @nodoc
abstract class _$BoardCopyWith<$Res> implements $BoardCopyWith<$Res> {
  factory _$BoardCopyWith(_Board value, $Res Function(_Board) then) =
      __$BoardCopyWithImpl<$Res>;
  @override
  $Res call({List<List<Tile>> tiles});
}

/// @nodoc
class __$BoardCopyWithImpl<$Res> extends _$BoardCopyWithImpl<$Res>
    implements _$BoardCopyWith<$Res> {
  __$BoardCopyWithImpl(_Board _value, $Res Function(_Board) _then)
      : super(_value, (v) => _then(v as _Board));

  @override
  _Board get _value => super._value as _Board;

  @override
  $Res call({
    Object? tiles = freezed,
  }) {
    return _then(_Board(
      tiles: tiles == freezed
          ? _value.tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as List<List<Tile>>,
    ));
  }
}

/// @nodoc

class _$_Board implements _Board {
  const _$_Board({required this.tiles});

  @override
  final List<List<Tile>> tiles;

  @override
  String toString() {
    return 'Board(tiles: $tiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Board &&
            const DeepCollectionEquality().equals(other.tiles, tiles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tiles));

  @JsonKey(ignore: true)
  @override
  _$BoardCopyWith<_Board> get copyWith =>
      __$BoardCopyWithImpl<_Board>(this, _$identity);
}

abstract class _Board implements Board {
  const factory _Board({required List<List<Tile>> tiles}) = _$_Board;

  @override
  List<List<Tile>> get tiles;
  @override
  @JsonKey(ignore: true)
  _$BoardCopyWith<_Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TileTearOff {
  const _$TileTearOff();

  _Tile call({required Piece? piece}) {
    return _Tile(
      piece: piece,
    );
  }
}

/// @nodoc
const $Tile = _$TileTearOff();

/// @nodoc
mixin _$Tile {
  Piece? get piece => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TileCopyWith<Tile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileCopyWith<$Res> {
  factory $TileCopyWith(Tile value, $Res Function(Tile) then) =
      _$TileCopyWithImpl<$Res>;
  $Res call({Piece? piece});

  $PieceCopyWith<$Res>? get piece;
}

/// @nodoc
class _$TileCopyWithImpl<$Res> implements $TileCopyWith<$Res> {
  _$TileCopyWithImpl(this._value, this._then);

  final Tile _value;
  // ignore: unused_field
  final $Res Function(Tile) _then;

  @override
  $Res call({
    Object? piece = freezed,
  }) {
    return _then(_value.copyWith(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Piece?,
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
abstract class _$TileCopyWith<$Res> implements $TileCopyWith<$Res> {
  factory _$TileCopyWith(_Tile value, $Res Function(_Tile) then) =
      __$TileCopyWithImpl<$Res>;
  @override
  $Res call({Piece? piece});

  @override
  $PieceCopyWith<$Res>? get piece;
}

/// @nodoc
class __$TileCopyWithImpl<$Res> extends _$TileCopyWithImpl<$Res>
    implements _$TileCopyWith<$Res> {
  __$TileCopyWithImpl(_Tile _value, $Res Function(_Tile) _then)
      : super(_value, (v) => _then(v as _Tile));

  @override
  _Tile get _value => super._value as _Tile;

  @override
  $Res call({
    Object? piece = freezed,
  }) {
    return _then(_Tile(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Piece?,
    ));
  }
}

/// @nodoc

class _$_Tile implements _Tile {
  const _$_Tile({required this.piece});

  @override
  final Piece? piece;

  @override
  String toString() {
    return 'Tile(piece: $piece)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tile &&
            const DeepCollectionEquality().equals(other.piece, piece));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(piece));

  @JsonKey(ignore: true)
  @override
  _$TileCopyWith<_Tile> get copyWith =>
      __$TileCopyWithImpl<_Tile>(this, _$identity);
}

abstract class _Tile implements Tile {
  const factory _Tile({required Piece? piece}) = _$_Tile;

  @override
  Piece? get piece;
  @override
  @JsonKey(ignore: true)
  _$TileCopyWith<_Tile> get copyWith => throw _privateConstructorUsedError;
}
