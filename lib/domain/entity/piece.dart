import 'package:flutter_shogi/domain/entity/entity.dart';
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
final _hishaMovableDirections = [
  _upToEnd,
  _rightToEnd,
  _downToEnd,
  _leftToEnd,
];
final _ryuouMovableDirections = [
  ..._hishaMovableDirections,
  _upRightOne,
  _downRightOne,
  _downLeftOne,
  _upLeftOne,
];
// 角行、竜目
final _kakuMovableDirections = [
  _upRightToEnd,
  _downRightToEnd,
  _downLeftToEnd,
  _upLeftToEnd,
];
final _ryumeMovableDirections = [
  ..._kakuMovableDirections,
  _upOne,
  _rightOne,
  _downOne,
  _leftOne,
];

// 金将
final _kinshoMovableDirections = [
  _upOne,
  _upRightOne,
  _rightOne,
  _downOne,
  _leftOne,
  _upLeftOne,
];

// 銀将
final _ginshoMovableDirections = [
  _upOne,
  _upRightOne,
  _downRightOne,
  _downLeftOne,
  _upLeftOne,
];

// 桂馬
final _keimaMovableDirections = [
  _keimaUpRight,
  _keimaUpLeft,
];

// 香車
final _kyoshaMovableDirections = [
  _upToEnd,
];

// 歩兵
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
class Piece with _$Piece {
  const factory Piece({
    required String name,
    required List<Movement> movableDirections,
    Vector2? position,
    // required Direction movableDirection,
  }) = _Piece;
  const Piece._();
  factory Piece.huhyo(
    Vector2 position,
  ) =>
      Piece(
        name: '歩',
        movableDirections: _huhyoMovableDirections,
        position: position,
      );
  factory Piece.tokin(
    Vector2 position,
  ) =>
      Piece(
        name: 'と',
        movableDirections: _kinshoMovableDirections,
        position: position,
      );
  factory Piece.kyosha(
    Vector2 position,
  ) =>
      Piece(
        name: '香',
        movableDirections: _kyoshaMovableDirections,
        position: position,
      );
  factory Piece.narikyo(
    Vector2 position,
  ) =>
      Piece(
        name: '杏',
        movableDirections: _kinshoMovableDirections,
        position: position,
      );
  factory Piece.keima(
    Vector2 position,
  ) =>
      Piece(
        name: '桂',
        movableDirections: _keimaMovableDirections,
        position: position,
      );
  factory Piece.narikei(
    Vector2 position,
  ) =>
      Piece(
        name: '圭',
        movableDirections: _kinshoMovableDirections,
        position: position,
      );
  factory Piece.ginsho(
    Vector2 position,
  ) =>
      Piece(
        name: '銀',
        movableDirections: _ginshoMovableDirections,
        position: position,
      );
  factory Piece.narigin(
    Vector2 position,
  ) =>
      Piece(
        name: '全',
        movableDirections: _kinshoMovableDirections,
        position: position,
      );
  factory Piece.hisha(
    Vector2 position,
  ) =>
      Piece(
        name: '飛',
        movableDirections: _hishaMovableDirections,
        position: position,
      );
  factory Piece.ryuo(
    Vector2 position,
  ) =>
      Piece(
        name: '龍',
        movableDirections: _ryuouMovableDirections,
        position: position,
      );
  factory Piece.kakugyo(
    Vector2 position,
  ) =>
      Piece(
        name: '角',
        movableDirections: _kakuMovableDirections,
        position: position,
      );
  factory Piece.ryuma(
    Vector2 position,
  ) =>
      Piece(
        name: '馬',
        movableDirections: _ryumeMovableDirections,
        position: position,
      );
  factory Piece.kinsho(
    Vector2 position,
  ) =>
      Piece(
        name: '金',
        movableDirections: _kinshoMovableDirections,
        position: position,
      );
  factory Piece.ousho(
    Vector2 position,
  ) =>
      Piece(
        name: '王',
        movableDirections: _oushoMovableDirections,
        position: position,
      );
  factory Piece.gyokusho(
    Vector2 position,
  ) =>
      Piece(
        name: '玉',
        movableDirections: _oushoMovableDirections,
        position: position,
      );
  // const factory Piece.huhyo() = Huhyo;
  // const factory Piece.tokin() = Tokin;
  // const factory Piece.kyosha() = Kyosha;
  // const factory Piece.narikyo() = Narikyo;
  // const factory Piece.keima() = Keima;
  // const factory Piece.narikei() = Narikei;
  // const factory Piece.ginsho() = Ginsho;
  // const factory Piece.narigin() = Narigin;
  // const factory Piece.hisha() = Hisha;
  // const factory Piece.ryuo() = Ryuo;
  // const factory Piece.kakugyo() = Kakugyo;
  // const factory Piece.ryuma() = Ryuma;
  // const factory Piece.kinsho() = Kinsho;
  // const factory Piece.ousho() = Ousho;
  // const factory Piece.gyokusho() = Gyokusho;
  // Piece(
  //   name: '王',
  //   movableDirections: [
  //     _up,
  //     _down,
  //     _right,
  //     _left,
  //     _upRight,
  //     _upLeft,
  //     _downRight,
  //     _downLeft,
  //   ],
  //   // movableDirection: Direction(
  //   //   up: 1,
  //   //   right: 1,
  //   //   left: 1,
  //   //   down: 1,
  //   //   upRight: 1,
  //   //   upLeft: 1,
  //   //   downRight: 1,
  //   //   downLeft: 1,
  //   // ),
  // );
  // factory Piece.hisya() => Piece(name: '飛', movableDirections: [_up]
  //     // movableDirection: Direction(
  //     //   up: 99,
  //     //   down: 99,
  //     //   left: 99,
  //     //   right: 99,
  //     // ),
  //     );

  // List<Vector2> get movalDirections =  >

  // String get name => when(
  //       huhyo: () => '歩',
  //       tokin: () => 'と',
  //       kyosha: () => '香',
  //       narikyo: () => '杏',
  //       keima: () => '桂',
  //       narikei: () => '圭',
  //       ginsho: () => '銀',
  //       narigin: () => '全',
  //       hisha: () => '飛',
  //       ryuo: () => '龍',
  //       kakugyo: () => '角',
  //       ryuma: () => '馬',
  //       kinsho: () => '金',
  //       ousho: () => '王',
  //       gyokusho: () => '玉',
  //     );
  // Piece? promote() {
  //   return maybeWhen(
  //     huhyo: () => const Piece.tokin(),
  //     orElse: () => null,
  //   );
  // }
}
