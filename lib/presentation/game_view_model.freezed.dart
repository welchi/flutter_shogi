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
      {bool isMovable = false, PieceWithOwner? piece}) {
    return _HighlightableBoardTile(
      isMovable: isMovable,
      piece: piece,
    );
  }
}

/// @nodoc
const $HighlightableBoardTile = _$HighlightableBoardTileTearOff();

/// @nodoc
mixin _$HighlightableBoardTile {
  bool get isMovable => throw _privateConstructorUsedError;
  PieceWithOwner? get piece => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HighlightableBoardTileCopyWith<HighlightableBoardTile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightableBoardTileCopyWith<$Res> {
  factory $HighlightableBoardTileCopyWith(HighlightableBoardTile value,
          $Res Function(HighlightableBoardTile) then) =
      _$HighlightableBoardTileCopyWithImpl<$Res>;
  $Res call({bool isMovable, PieceWithOwner? piece});

  $PieceWithOwnerCopyWith<$Res>? get piece;
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
  }) {
    return _then(_value.copyWith(
      isMovable: isMovable == freezed
          ? _value.isMovable
          : isMovable // ignore: cast_nullable_to_non_nullable
              as bool,
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as PieceWithOwner?,
    ));
  }

  @override
  $PieceWithOwnerCopyWith<$Res>? get piece {
    if (_value.piece == null) {
      return null;
    }

    return $PieceWithOwnerCopyWith<$Res>(_value.piece!, (value) {
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
  $Res call({bool isMovable, PieceWithOwner? piece});

  @override
  $PieceWithOwnerCopyWith<$Res>? get piece;
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
  }) {
    return _then(_HighlightableBoardTile(
      isMovable: isMovable == freezed
          ? _value.isMovable
          : isMovable // ignore: cast_nullable_to_non_nullable
              as bool,
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as PieceWithOwner?,
    ));
  }
}

/// @nodoc

class _$_HighlightableBoardTile implements _HighlightableBoardTile {
  const _$_HighlightableBoardTile({this.isMovable = false, this.piece});

  @JsonKey(defaultValue: false)
  @override
  final bool isMovable;
  @override
  final PieceWithOwner? piece;

  @override
  String toString() {
    return 'HighlightableBoardTile(isMovable: $isMovable, piece: $piece)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HighlightableBoardTile &&
            const DeepCollectionEquality().equals(other.isMovable, isMovable) &&
            const DeepCollectionEquality().equals(other.piece, piece));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isMovable),
      const DeepCollectionEquality().hash(piece));

  @JsonKey(ignore: true)
  @override
  _$HighlightableBoardTileCopyWith<_HighlightableBoardTile> get copyWith =>
      __$HighlightableBoardTileCopyWithImpl<_HighlightableBoardTile>(
          this, _$identity);
}

abstract class _HighlightableBoardTile implements HighlightableBoardTile {
  const factory _HighlightableBoardTile(
      {bool isMovable, PieceWithOwner? piece}) = _$_HighlightableBoardTile;

  @override
  bool get isMovable;
  @override
  PieceWithOwner? get piece;
  @override
  @JsonKey(ignore: true)
  _$HighlightableBoardTileCopyWith<_HighlightableBoardTile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BoardTileTearOff {
  const _$BoardTileTearOff();

  _BoardTile call({PieceWithOwner? piece}) {
    return _BoardTile(
      piece: piece,
    );
  }
}

/// @nodoc
const $BoardTile = _$BoardTileTearOff();

/// @nodoc
mixin _$BoardTile {
  PieceWithOwner? get piece => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardTileCopyWith<BoardTile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardTileCopyWith<$Res> {
  factory $BoardTileCopyWith(BoardTile value, $Res Function(BoardTile) then) =
      _$BoardTileCopyWithImpl<$Res>;
  $Res call({PieceWithOwner? piece});

  $PieceWithOwnerCopyWith<$Res>? get piece;
}

/// @nodoc
class _$BoardTileCopyWithImpl<$Res> implements $BoardTileCopyWith<$Res> {
  _$BoardTileCopyWithImpl(this._value, this._then);

  final BoardTile _value;
  // ignore: unused_field
  final $Res Function(BoardTile) _then;

  @override
  $Res call({
    Object? piece = freezed,
  }) {
    return _then(_value.copyWith(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as PieceWithOwner?,
    ));
  }

  @override
  $PieceWithOwnerCopyWith<$Res>? get piece {
    if (_value.piece == null) {
      return null;
    }

    return $PieceWithOwnerCopyWith<$Res>(_value.piece!, (value) {
      return _then(_value.copyWith(piece: value));
    });
  }
}

/// @nodoc
abstract class _$BoardTileCopyWith<$Res> implements $BoardTileCopyWith<$Res> {
  factory _$BoardTileCopyWith(
          _BoardTile value, $Res Function(_BoardTile) then) =
      __$BoardTileCopyWithImpl<$Res>;
  @override
  $Res call({PieceWithOwner? piece});

  @override
  $PieceWithOwnerCopyWith<$Res>? get piece;
}

/// @nodoc
class __$BoardTileCopyWithImpl<$Res> extends _$BoardTileCopyWithImpl<$Res>
    implements _$BoardTileCopyWith<$Res> {
  __$BoardTileCopyWithImpl(_BoardTile _value, $Res Function(_BoardTile) _then)
      : super(_value, (v) => _then(v as _BoardTile));

  @override
  _BoardTile get _value => super._value as _BoardTile;

  @override
  $Res call({
    Object? piece = freezed,
  }) {
    return _then(_BoardTile(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as PieceWithOwner?,
    ));
  }
}

/// @nodoc

class _$_BoardTile implements _BoardTile {
  const _$_BoardTile({this.piece});

  @override
  final PieceWithOwner? piece;

  @override
  String toString() {
    return 'BoardTile(piece: $piece)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BoardTile &&
            const DeepCollectionEquality().equals(other.piece, piece));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(piece));

  @JsonKey(ignore: true)
  @override
  _$BoardTileCopyWith<_BoardTile> get copyWith =>
      __$BoardTileCopyWithImpl<_BoardTile>(this, _$identity);
}

abstract class _BoardTile implements BoardTile {
  const factory _BoardTile({PieceWithOwner? piece}) = _$_BoardTile;

  @override
  PieceWithOwner? get piece;
  @override
  @JsonKey(ignore: true)
  _$BoardTileCopyWith<_BoardTile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameViewModelTearOff {
  const _$GameViewModelTearOff();

  _GameViewModel call({required Player me, required Player cpu}) {
    return _GameViewModel(
      me: me,
      cpu: cpu,
    );
  }
}

/// @nodoc
const $GameViewModel = _$GameViewModelTearOff();

/// @nodoc
mixin _$GameViewModel {
  Player get me => throw _privateConstructorUsedError;
  Player get cpu => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameViewModelCopyWith<GameViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameViewModelCopyWith<$Res> {
  factory $GameViewModelCopyWith(
          GameViewModel value, $Res Function(GameViewModel) then) =
      _$GameViewModelCopyWithImpl<$Res>;
  $Res call({Player me, Player cpu});

  $PlayerCopyWith<$Res> get me;
  $PlayerCopyWith<$Res> get cpu;
}

/// @nodoc
class _$GameViewModelCopyWithImpl<$Res>
    implements $GameViewModelCopyWith<$Res> {
  _$GameViewModelCopyWithImpl(this._value, this._then);

  final GameViewModel _value;
  // ignore: unused_field
  final $Res Function(GameViewModel) _then;

  @override
  $Res call({
    Object? me = freezed,
    Object? cpu = freezed,
  }) {
    return _then(_value.copyWith(
      me: me == freezed
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as Player,
      cpu: cpu == freezed
          ? _value.cpu
          : cpu // ignore: cast_nullable_to_non_nullable
              as Player,
    ));
  }

  @override
  $PlayerCopyWith<$Res> get me {
    return $PlayerCopyWith<$Res>(_value.me, (value) {
      return _then(_value.copyWith(me: value));
    });
  }

  @override
  $PlayerCopyWith<$Res> get cpu {
    return $PlayerCopyWith<$Res>(_value.cpu, (value) {
      return _then(_value.copyWith(cpu: value));
    });
  }
}

/// @nodoc
abstract class _$GameViewModelCopyWith<$Res>
    implements $GameViewModelCopyWith<$Res> {
  factory _$GameViewModelCopyWith(
          _GameViewModel value, $Res Function(_GameViewModel) then) =
      __$GameViewModelCopyWithImpl<$Res>;
  @override
  $Res call({Player me, Player cpu});

  @override
  $PlayerCopyWith<$Res> get me;
  @override
  $PlayerCopyWith<$Res> get cpu;
}

/// @nodoc
class __$GameViewModelCopyWithImpl<$Res>
    extends _$GameViewModelCopyWithImpl<$Res>
    implements _$GameViewModelCopyWith<$Res> {
  __$GameViewModelCopyWithImpl(
      _GameViewModel _value, $Res Function(_GameViewModel) _then)
      : super(_value, (v) => _then(v as _GameViewModel));

  @override
  _GameViewModel get _value => super._value as _GameViewModel;

  @override
  $Res call({
    Object? me = freezed,
    Object? cpu = freezed,
  }) {
    return _then(_GameViewModel(
      me: me == freezed
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as Player,
      cpu: cpu == freezed
          ? _value.cpu
          : cpu // ignore: cast_nullable_to_non_nullable
              as Player,
    ));
  }
}

/// @nodoc

class _$_GameViewModel implements _GameViewModel {
  const _$_GameViewModel({required this.me, required this.cpu});

  @override
  final Player me;
  @override
  final Player cpu;

  @override
  String toString() {
    return 'GameViewModel(me: $me, cpu: $cpu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameViewModel &&
            const DeepCollectionEquality().equals(other.me, me) &&
            const DeepCollectionEquality().equals(other.cpu, cpu));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(me),
      const DeepCollectionEquality().hash(cpu));

  @JsonKey(ignore: true)
  @override
  _$GameViewModelCopyWith<_GameViewModel> get copyWith =>
      __$GameViewModelCopyWithImpl<_GameViewModel>(this, _$identity);
}

abstract class _GameViewModel implements GameViewModel {
  const factory _GameViewModel({required Player me, required Player cpu}) =
      _$_GameViewModel;

  @override
  Player get me;
  @override
  Player get cpu;
  @override
  @JsonKey(ignore: true)
  _$GameViewModelCopyWith<_GameViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
