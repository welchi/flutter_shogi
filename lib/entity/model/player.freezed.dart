// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerTearOff {
  const _$PlayerTearOff();

  _Player call(
      {required String id,
      required PlayerType type,
      required List<Piece> pieces,
      required List<Piece> capturedPieces}) {
    return _Player(
      id: id,
      type: type,
      pieces: pieces,
      capturedPieces: capturedPieces,
    );
  }
}

/// @nodoc
const $Player = _$PlayerTearOff();

/// @nodoc
mixin _$Player {
  String get id => throw _privateConstructorUsedError;
  PlayerType get type => throw _privateConstructorUsedError;
  List<Piece> get pieces => throw _privateConstructorUsedError; // 盤面上に置いている駒
  List<Piece> get capturedPieces => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res>;
  $Res call(
      {String id,
      PlayerType type,
      List<Piece> pieces,
      List<Piece> capturedPieces});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res> implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  final Player _value;
  // ignore: unused_field
  final $Res Function(Player) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? pieces = freezed,
    Object? capturedPieces = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlayerType,
      pieces: pieces == freezed
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as List<Piece>,
      capturedPieces: capturedPieces == freezed
          ? _value.capturedPieces
          : capturedPieces // ignore: cast_nullable_to_non_nullable
              as List<Piece>,
    ));
  }
}

/// @nodoc
abstract class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) then) =
      __$PlayerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      PlayerType type,
      List<Piece> pieces,
      List<Piece> capturedPieces});
}

/// @nodoc
class __$PlayerCopyWithImpl<$Res> extends _$PlayerCopyWithImpl<$Res>
    implements _$PlayerCopyWith<$Res> {
  __$PlayerCopyWithImpl(_Player _value, $Res Function(_Player) _then)
      : super(_value, (v) => _then(v as _Player));

  @override
  _Player get _value => super._value as _Player;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? pieces = freezed,
    Object? capturedPieces = freezed,
  }) {
    return _then(_Player(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlayerType,
      pieces: pieces == freezed
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as List<Piece>,
      capturedPieces: capturedPieces == freezed
          ? _value.capturedPieces
          : capturedPieces // ignore: cast_nullable_to_non_nullable
              as List<Piece>,
    ));
  }
}

/// @nodoc

class _$_Player implements _Player {
  const _$_Player(
      {required this.id,
      required this.type,
      required this.pieces,
      required this.capturedPieces});

  @override
  final String id;
  @override
  final PlayerType type;
  @override
  final List<Piece> pieces;
  @override // 盤面上に置いている駒
  final List<Piece> capturedPieces;

  @override
  String toString() {
    return 'Player(id: $id, type: $type, pieces: $pieces, capturedPieces: $capturedPieces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Player &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.pieces, pieces) &&
            const DeepCollectionEquality()
                .equals(other.capturedPieces, capturedPieces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(pieces),
      const DeepCollectionEquality().hash(capturedPieces));

  @JsonKey(ignore: true)
  @override
  _$PlayerCopyWith<_Player> get copyWith =>
      __$PlayerCopyWithImpl<_Player>(this, _$identity);
}

abstract class _Player implements Player {
  const factory _Player(
      {required String id,
      required PlayerType type,
      required List<Piece> pieces,
      required List<Piece> capturedPieces}) = _$_Player;

  @override
  String get id;
  @override
  PlayerType get type;
  @override
  List<Piece> get pieces;
  @override // 盤面上に置いている駒
  List<Piece> get capturedPieces;
  @override
  @JsonKey(ignore: true)
  _$PlayerCopyWith<_Player> get copyWith => throw _privateConstructorUsedError;
}
