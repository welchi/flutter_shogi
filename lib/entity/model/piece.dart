import 'package:flutter_shogi/entity/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vector_math/vector_math.dart';

part 'piece.freezed.dart';

// 移動方向(x,y)
final _up = Vector2(0, 1);
final _down = Vector2(0, -1);
final _right = Vector2(1, 0);
final _left = Vector2(-1, 0);
final _upRight = Vector2(1, 1);
final _upLeft = Vector2(-1, 1);
final _downRight = Vector2(1, -1);
final _downLeft = Vector2(-1, -1);

// 移動可能な量(x,y,移動できる回数)
final _upOne = Movement(direction: _up);
final _upRightOne = Movement(direction: _upRight);
final _rightOne = Movement(direction: _right);
final _downRightOne = Movement(direction: _downRight);
final _downOne = Movement(direction: _down);
final _downLeftOne = Movement(direction: _downLeft);
final _leftOne = Movement(direction: _left);
final _upLeftOne = Movement(direction: _upLeft);

final _upToEnd = Movement(direction: _up, count: Board.rowSize);
final _upRightToEnd = Movement(direction: _upRight, count: Board.rowSize);
final _rightToEnd = Movement(direction: _right, count: Board.rowSize);
final _downRightToEnd = Movement(direction: _downRight, count: Board.rowSize);
final _downToEnd = Movement(direction: _down, count: Board.rowSize);
final _downLeftToEnd = Movement(direction: _downLeft, count: Board.rowSize);
final _leftToEnd = Movement(direction: _left, count: Board.rowSize);
final _upLeftToEnd = Movement(direction: _upLeft, count: Board.rowSize);

final _keimaUpRight = Movement(
  direction: Vector2(1, 2),
  count: 1,
);
final _keimaUpLeft = Movement(
  direction: Vector2(-1, 2),
  count: 1,
);

// 駒の動きを定義
// 王将
const ousho = '王';
const gyokusho = '玉';
final _oushoMovableDirections = [
  _upOne,
  _upRightOne,
  _rightOne,
  _downRightOne,
  _downOne,
  _downLeftOne,
  _leftOne,
  _upLeftOne,
];
// 飛車、龍王
const hisha = '飛';
final _hishaMovableDirections = [
  _upToEnd,
  _rightToEnd,
  _downToEnd,
  _leftToEnd,
];
const ryuou = '龍';
final _ryuouMovableDirections = [
  ..._hishaMovableDirections,
  _upRightOne,
  _downRightOne,
  _downLeftOne,
  _upLeftOne,
];
// 角行、竜目
const kakugyo = '角';
final _kakuMovableDirections = [
  _upRightToEnd,
  _downRightToEnd,
  _downLeftToEnd,
  _upLeftToEnd,
];
const ryume = '馬';
final _ryumeMovableDirections = [
  ..._kakuMovableDirections,
  _upOne,
  _rightOne,
  _downOne,
  _leftOne,
];

// 金将
const kinsho = '金';
final _kinshoMovableDirections = [
  _upOne,
  _upRightOne,
  _rightOne,
  _downOne,
  _leftOne,
  _upLeftOne,
];

// 銀将
const ginsho = '銀';
const narigin = '全';
final _ginshoMovableDirections = [
  _upOne,
  _upRightOne,
  _downRightOne,
  _downLeftOne,
  _upLeftOne,
];

// 桂馬
const keima = '桂';
const narikei = '圭';
final _keimaMovableDirections = [
  _keimaUpRight,
  _keimaUpLeft,
];

// 香車
const kyosha = '香';
const narikyo = '杏';
final _kyoshaMovableDirections = [
  _upToEnd,
];

// 歩兵
const huhyo = '歩';
const narikin = 'と';

final _huhyoMovableDirections = [
  _upOne,
];

// 駒の移動
@freezed
class Movement with _$Movement {
  const factory Movement({
    required Vector2 direction,
    @Default(1) int count,
    // required Direction movableDirection,
  }) = _Movement;
  const Movement._();
}

// キー割り当ても必要
@freezed
abstract class Piece implements _$Piece {
  factory Piece({
    required String name,
    required List<Movement> movableDirections,
    required String ownerId,
    Vector2? position,
  }) = _Piece;
  Piece._();
  factory Piece.huhyo(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: huhyo,
        movableDirections: _huhyoMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.tokin(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: narikin,
        movableDirections: _kinshoMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.kyosha(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: kyosha,
        movableDirections: _kyoshaMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.narikyo(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: narikyo,
        movableDirections: _kinshoMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.keima(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: keima,
        movableDirections: _keimaMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.narikei(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: narikei,
        movableDirections: _kinshoMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.ginsho(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: ginsho,
        movableDirections: _ginshoMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.narigin(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: narigin,
        movableDirections: _kinshoMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.hisha(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: hisha,
        movableDirections: _hishaMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.ryuo(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: ryuou,
        movableDirections: _ryuouMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.kakugyo(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: kakugyo,
        movableDirections: _kakuMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.ryuma(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: ryume,
        movableDirections: _ryumeMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.kinsho(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: kinsho,
        movableDirections: _kinshoMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.ousho(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: ousho,
        movableDirections: _oushoMovableDirections,
        position: position,
        ownerId: ownerId,
      );
  factory Piece.gyokusho(
    Vector2 position,
    String ownerId,
  ) =>
      Piece(
        name: gyokusho,
        movableDirections: _oushoMovableDirections,
        position: position,
        ownerId: ownerId,
      );

  /// 成りで何に成るか
  Piece? promote() {
    if (name == huhyo) {
      return Piece.tokin(position!, ownerId);
    }
    if (name == kyosha) {
      return Piece.narikyo(position!, ownerId);
    }
    if (name == keima) {
      return Piece.narikei(position!, ownerId);
    }
    if (name == ginsho) {
      return Piece.narigin(position!, ownerId);
    }
    if (name == hisha) {
      return Piece.ryuo(position!, ownerId);
    }
    if (name == kakugyo) {
      return Piece.ryuma(position!, ownerId);
    }
    return null;
  }

  /// 成りを解除
  Piece? demote() {
    if (name == narikin) {
      return Piece.huhyo(position!, ownerId);
    }
    if (name == narikyo) {
      return Piece.kyosha(position!, ownerId);
    }
    if (name == narikei) {
      return Piece.keima(position!, ownerId);
    }
    if (name == narigin) {
      return Piece.ginsho(position!, ownerId);
    }
    if (name == ryuou) {
      return Piece.hisha(position!, ownerId);
    }
    if (name == ryume) {
      return Piece.kakugyo(position!, ownerId);
    }
    return null;
  }

  /// 成った駒か
  bool isPromoted() {
    switch (name) {
      case narikin:
      case narikyo:
      case narikei:
      case narigin:
      case ryuou:
      case ryume:
        return true;
    }
    return false;
  }
}
