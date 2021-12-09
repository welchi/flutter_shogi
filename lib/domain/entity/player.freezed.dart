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

  Human human(
      {required List<Piece> pieces, required List<Piece> capturedPieces}) {
    return Human(
      pieces: pieces,
      capturedPieces: capturedPieces,
    );
  }

  AI ai({required List<Piece> pieces, required List<Piece> capturedPieces}) {
    return AI(
      pieces: pieces,
      capturedPieces: capturedPieces,
    );
  }
}

/// @nodoc
const $Player = _$PlayerTearOff();

/// @nodoc
mixin _$Player {
  List<Piece> get pieces => throw _privateConstructorUsedError; // 盤面上に置いている駒
  List<Piece> get capturedPieces => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Piece> pieces, List<Piece> capturedPieces)
        human,
    required TResult Function(List<Piece> pieces, List<Piece> capturedPieces)
        ai,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Piece> pieces, List<Piece> capturedPieces)? human,
    TResult Function(List<Piece> pieces, List<Piece> capturedPieces)? ai,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Piece> pieces, List<Piece> capturedPieces)? human,
    TResult Function(List<Piece> pieces, List<Piece> capturedPieces)? ai,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Human value) human,
    required TResult Function(AI value) ai,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Human value)? human,
    TResult Function(AI value)? ai,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Human value)? human,
    TResult Function(AI value)? ai,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res>;
  $Res call({List<Piece> pieces, List<Piece> capturedPieces});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res> implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  final Player _value;
  // ignore: unused_field
  final $Res Function(Player) _then;

  @override
  $Res call({
    Object? pieces = freezed,
    Object? capturedPieces = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class $HumanCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory $HumanCopyWith(Human value, $Res Function(Human) then) =
      _$HumanCopyWithImpl<$Res>;
  @override
  $Res call({List<Piece> pieces, List<Piece> capturedPieces});
}

/// @nodoc
class _$HumanCopyWithImpl<$Res> extends _$PlayerCopyWithImpl<$Res>
    implements $HumanCopyWith<$Res> {
  _$HumanCopyWithImpl(Human _value, $Res Function(Human) _then)
      : super(_value, (v) => _then(v as Human));

  @override
  Human get _value => super._value as Human;

  @override
  $Res call({
    Object? pieces = freezed,
    Object? capturedPieces = freezed,
  }) {
    return _then(Human(
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

class _$Human implements Human {
  const _$Human({required this.pieces, required this.capturedPieces});

  @override
  final List<Piece> pieces;
  @override // 盤面上に置いている駒
  final List<Piece> capturedPieces;

  @override
  String toString() {
    return 'Player.human(pieces: $pieces, capturedPieces: $capturedPieces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Human &&
            const DeepCollectionEquality().equals(other.pieces, pieces) &&
            const DeepCollectionEquality()
                .equals(other.capturedPieces, capturedPieces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pieces),
      const DeepCollectionEquality().hash(capturedPieces));

  @JsonKey(ignore: true)
  @override
  $HumanCopyWith<Human> get copyWith =>
      _$HumanCopyWithImpl<Human>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Piece> pieces, List<Piece> capturedPieces)
        human,
    required TResult Function(List<Piece> pieces, List<Piece> capturedPieces)
        ai,
  }) {
    return human(pieces, capturedPieces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Piece> pieces, List<Piece> capturedPieces)? human,
    TResult Function(List<Piece> pieces, List<Piece> capturedPieces)? ai,
  }) {
    return human?.call(pieces, capturedPieces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Piece> pieces, List<Piece> capturedPieces)? human,
    TResult Function(List<Piece> pieces, List<Piece> capturedPieces)? ai,
    required TResult orElse(),
  }) {
    if (human != null) {
      return human(pieces, capturedPieces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Human value) human,
    required TResult Function(AI value) ai,
  }) {
    return human(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Human value)? human,
    TResult Function(AI value)? ai,
  }) {
    return human?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Human value)? human,
    TResult Function(AI value)? ai,
    required TResult orElse(),
  }) {
    if (human != null) {
      return human(this);
    }
    return orElse();
  }
}

abstract class Human implements Player {
  const factory Human(
      {required List<Piece> pieces,
      required List<Piece> capturedPieces}) = _$Human;

  @override
  List<Piece> get pieces;
  @override // 盤面上に置いている駒
  List<Piece> get capturedPieces;
  @override
  @JsonKey(ignore: true)
  $HumanCopyWith<Human> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AICopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory $AICopyWith(AI value, $Res Function(AI) then) =
      _$AICopyWithImpl<$Res>;
  @override
  $Res call({List<Piece> pieces, List<Piece> capturedPieces});
}

/// @nodoc
class _$AICopyWithImpl<$Res> extends _$PlayerCopyWithImpl<$Res>
    implements $AICopyWith<$Res> {
  _$AICopyWithImpl(AI _value, $Res Function(AI) _then)
      : super(_value, (v) => _then(v as AI));

  @override
  AI get _value => super._value as AI;

  @override
  $Res call({
    Object? pieces = freezed,
    Object? capturedPieces = freezed,
  }) {
    return _then(AI(
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

class _$AI implements AI {
  const _$AI({required this.pieces, required this.capturedPieces});

  @override
  final List<Piece> pieces;
  @override // 盤面上に置いている駒
  final List<Piece> capturedPieces;

  @override
  String toString() {
    return 'Player.ai(pieces: $pieces, capturedPieces: $capturedPieces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AI &&
            const DeepCollectionEquality().equals(other.pieces, pieces) &&
            const DeepCollectionEquality()
                .equals(other.capturedPieces, capturedPieces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pieces),
      const DeepCollectionEquality().hash(capturedPieces));

  @JsonKey(ignore: true)
  @override
  $AICopyWith<AI> get copyWith => _$AICopyWithImpl<AI>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Piece> pieces, List<Piece> capturedPieces)
        human,
    required TResult Function(List<Piece> pieces, List<Piece> capturedPieces)
        ai,
  }) {
    return ai(pieces, capturedPieces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Piece> pieces, List<Piece> capturedPieces)? human,
    TResult Function(List<Piece> pieces, List<Piece> capturedPieces)? ai,
  }) {
    return ai?.call(pieces, capturedPieces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Piece> pieces, List<Piece> capturedPieces)? human,
    TResult Function(List<Piece> pieces, List<Piece> capturedPieces)? ai,
    required TResult orElse(),
  }) {
    if (ai != null) {
      return ai(pieces, capturedPieces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Human value) human,
    required TResult Function(AI value) ai,
  }) {
    return ai(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Human value)? human,
    TResult Function(AI value)? ai,
  }) {
    return ai?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Human value)? human,
    TResult Function(AI value)? ai,
    required TResult orElse(),
  }) {
    if (ai != null) {
      return ai(this);
    }
    return orElse();
  }
}

abstract class AI implements Player {
  const factory AI(
      {required List<Piece> pieces,
      required List<Piece> capturedPieces}) = _$AI;

  @override
  List<Piece> get pieces;
  @override // 盤面上に置いている駒
  List<Piece> get capturedPieces;
  @override
  @JsonKey(ignore: true)
  $AICopyWith<AI> get copyWith => throw _privateConstructorUsedError;
}
