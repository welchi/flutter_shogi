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
    // required Direction movableDirection,
  }) = _Piece;
  factory Piece.ou() => Piece(
        name: '王',
        movableDirections: [
          _up,
          _down,
          _right,
          _left,
          _upRight,
          _upLeft,
          _downRight,
          _downLeft,
        ],
        // movableDirection: Direction(
        //   up: 1,
        //   right: 1,
        //   left: 1,
        //   down: 1,
        //   upRight: 1,
        //   upLeft: 1,
        //   downRight: 1,
        //   downLeft: 1,
        // ),
      );
  factory Piece.hisya() => Piece(name: '飛車', movableDirections: [_up]
      // movableDirection: Direction(
      //   up: 99,
      //   down: 99,
      //   left: 99,
      //   right: 99,
      // ),
      );
}
