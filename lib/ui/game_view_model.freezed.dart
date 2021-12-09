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
