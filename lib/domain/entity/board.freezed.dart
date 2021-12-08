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

  _Board call({required List<List<Cell>> cells}) {
    return _Board(
      cells: cells,
    );
  }
}

/// @nodoc
const $Board = _$BoardTearOff();

/// @nodoc
mixin _$Board {
  List<List<Cell>> get cells => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardCopyWith<Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardCopyWith<$Res> {
  factory $BoardCopyWith(Board value, $Res Function(Board) then) =
      _$BoardCopyWithImpl<$Res>;
  $Res call({List<List<Cell>> cells});
}

/// @nodoc
class _$BoardCopyWithImpl<$Res> implements $BoardCopyWith<$Res> {
  _$BoardCopyWithImpl(this._value, this._then);

  final Board _value;
  // ignore: unused_field
  final $Res Function(Board) _then;

  @override
  $Res call({
    Object? cells = freezed,
  }) {
    return _then(_value.copyWith(
      cells: cells == freezed
          ? _value.cells
          : cells // ignore: cast_nullable_to_non_nullable
              as List<List<Cell>>,
    ));
  }
}

/// @nodoc
abstract class _$BoardCopyWith<$Res> implements $BoardCopyWith<$Res> {
  factory _$BoardCopyWith(_Board value, $Res Function(_Board) then) =
      __$BoardCopyWithImpl<$Res>;
  @override
  $Res call({List<List<Cell>> cells});
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
    Object? cells = freezed,
  }) {
    return _then(_Board(
      cells: cells == freezed
          ? _value.cells
          : cells // ignore: cast_nullable_to_non_nullable
              as List<List<Cell>>,
    ));
  }
}

/// @nodoc

class _$_Board implements _Board {
  const _$_Board({required this.cells});

  @override
  final List<List<Cell>> cells;

  @override
  String toString() {
    return 'Board(cells: $cells)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Board &&
            const DeepCollectionEquality().equals(other.cells, cells));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cells));

  @JsonKey(ignore: true)
  @override
  _$BoardCopyWith<_Board> get copyWith =>
      __$BoardCopyWithImpl<_Board>(this, _$identity);
}

abstract class _Board implements Board {
  const factory _Board({required List<List<Cell>> cells}) = _$_Board;

  @override
  List<List<Cell>> get cells;
  @override
  @JsonKey(ignore: true)
  _$BoardCopyWith<_Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CellTearOff {
  const _$CellTearOff();

  _Cell call({required Piece? piece}) {
    return _Cell(
      piece: piece,
    );
  }
}

/// @nodoc
const $Cell = _$CellTearOff();

/// @nodoc
mixin _$Cell {
  Piece? get piece => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CellCopyWith<Cell> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellCopyWith<$Res> {
  factory $CellCopyWith(Cell value, $Res Function(Cell) then) =
      _$CellCopyWithImpl<$Res>;
  $Res call({Piece? piece});

  $PieceCopyWith<$Res>? get piece;
}

/// @nodoc
class _$CellCopyWithImpl<$Res> implements $CellCopyWith<$Res> {
  _$CellCopyWithImpl(this._value, this._then);

  final Cell _value;
  // ignore: unused_field
  final $Res Function(Cell) _then;

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
abstract class _$CellCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$CellCopyWith(_Cell value, $Res Function(_Cell) then) =
      __$CellCopyWithImpl<$Res>;
  @override
  $Res call({Piece? piece});

  @override
  $PieceCopyWith<$Res>? get piece;
}

/// @nodoc
class __$CellCopyWithImpl<$Res> extends _$CellCopyWithImpl<$Res>
    implements _$CellCopyWith<$Res> {
  __$CellCopyWithImpl(_Cell _value, $Res Function(_Cell) _then)
      : super(_value, (v) => _then(v as _Cell));

  @override
  _Cell get _value => super._value as _Cell;

  @override
  $Res call({
    Object? piece = freezed,
  }) {
    return _then(_Cell(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Piece?,
    ));
  }
}

/// @nodoc

class _$_Cell implements _Cell {
  const _$_Cell({required this.piece});

  @override
  final Piece? piece;

  @override
  String toString() {
    return 'Cell(piece: $piece)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cell &&
            const DeepCollectionEquality().equals(other.piece, piece));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(piece));

  @JsonKey(ignore: true)
  @override
  _$CellCopyWith<_Cell> get copyWith =>
      __$CellCopyWithImpl<_Cell>(this, _$identity);
}

abstract class _Cell implements Cell {
  const factory _Cell({required Piece? piece}) = _$_Cell;

  @override
  Piece? get piece;
  @override
  @JsonKey(ignore: true)
  _$CellCopyWith<_Cell> get copyWith => throw _privateConstructorUsedError;
}
