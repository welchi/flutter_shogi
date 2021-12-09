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
  // const factory Piece({
  //   required String name,
  //   required List<Vector2> movableDirections,
  //   // required Direction movableDirection,
  // }) = _Piece;
  const Piece._();
  const factory Piece.huhyo() = Huhyo;
  const factory Piece.tokin() = Tokin;
  const factory Piece.kyosha() = Kyosha;
  const factory Piece.narikyo() = Narikyo;
  const factory Piece.keima() = Keima;
  const factory Piece.narikei() = Narikei;
  const factory Piece.ginsho() = Ginsho;
  const factory Piece.narigin() = Narigin;
  const factory Piece.hisha() = Hisha;
  const factory Piece.ryuo() = Ryuo;
  const factory Piece.kakugyo() = Kakugyo;
  const factory Piece.ryuma() = Ryuma;
  const factory Piece.kinsho() = Kinsho;
  const factory Piece.ousho() = Ousho;
  const factory Piece.gyokusho() = Gyokusho;
  //
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

  String get name => when(
        huhyo: () => '歩',
        tokin: () => 'と',
        kyosha: () => '香',
        narikyo: () => '杏',
        keima: () => '桂',
        narikei: () => '圭',
        ginsho: () => '銀',
        narigin: () => '',
        hisha: () => '飛',
        ryuo: () => '龍',
        kakugyo: () => '角',
        ryuma: () => '馬',
        kinsho: () => '金',
        ousho: () => '王',
        gyokusho: () => '玉',
      );
  Piece? promote() {
    return maybeWhen(
      huhyo: () => const Piece.tokin(),
      orElse: () => null,
    );
  }
}
