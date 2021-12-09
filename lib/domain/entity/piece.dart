import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vector_math/vector_math.dart';

part 'piece.freezed.dart';

// x,y,移動できる回数
final _up = Vector2(0, 1);
final _down = Vector2(0, -1);
final _right = Vector2(1, 0);
final _left = Vector2(-1, 0);
final _upRight = Vector2(1, 1);
final _upLeft = Vector2(-1, 1);
final _downRight = Vector2(1, -1);
final _downLeft = Vector2(-1, -1);

// キー割り当ても必要
@freezed
class Piece with _$Piece {
  const factory Piece({
    required String name,
    required List<Vector2> movableDirections,
    Vector2? position,
    // required Direction movableDirection,
  }) = _Piece;
  const Piece._();
  factory Piece.huhyo(
    Vector2 position,
  ) =>
      Piece(
        name: '歩',
        movableDirections: [],
        position: position,
      );
  factory Piece.tokin(
    Vector2 position,
  ) =>
      Piece(
        name: 'と',
        movableDirections: [],
        position: position,
      );
  factory Piece.kyosha(
    Vector2 position,
  ) =>
      Piece(
        name: '香',
        movableDirections: [],
        position: position,
      );
  factory Piece.narikyo(
    Vector2 position,
  ) =>
      Piece(
        name: '杏',
        movableDirections: [],
        position: position,
      );
  factory Piece.keima(
    Vector2 position,
  ) =>
      Piece(
        name: '桂',
        movableDirections: [],
        position: position,
      );
  factory Piece.narikei(
    Vector2 position,
  ) =>
      Piece(
        name: '圭',
        movableDirections: [],
        position: position,
      );
  factory Piece.ginsho(
    Vector2 position,
  ) =>
      Piece(
        name: '銀',
        movableDirections: [],
        position: position,
      );
  factory Piece.narigin(
    Vector2 position,
  ) =>
      Piece(
        name: '全',
        movableDirections: [],
        position: position,
      );
  factory Piece.hisha(
    Vector2 position,
  ) =>
      Piece(
        name: '飛',
        movableDirections: [],
        position: position,
      );
  factory Piece.ryuo(
    Vector2 position,
  ) =>
      Piece(
        name: '龍',
        movableDirections: [],
        position: position,
      );
  factory Piece.kakugyo(
    Vector2 position,
  ) =>
      Piece(
        name: '角',
        movableDirections: [],
        position: position,
      );
  factory Piece.ryuma(
    Vector2 position,
  ) =>
      Piece(
        name: '馬',
        movableDirections: [],
        position: position,
      );
  factory Piece.kinsho(
    Vector2 position,
  ) =>
      Piece(
        name: '金',
        movableDirections: [],
        position: position,
      );
  factory Piece.ousho(
    Vector2 position,
  ) =>
      Piece(
        name: '王',
        movableDirections: [],
        position: position,
      );
  factory Piece.gyokusho(
    Vector2 position,
  ) =>
      Piece(
        name: '玉',
        movableDirections: [],
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
