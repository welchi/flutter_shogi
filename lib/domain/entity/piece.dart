import 'package:flutter_shogi/domain/entity/direction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'piece.freezed.dart';

@freezed
class Piece with _$Piece {
  const factory Piece({
    required String name,
    required Direction movableDirection,
  }) = _Piece;
  factory Piece.ou() => const Piece(
        name: '王',
        movableDirection: Direction(
          up: 1,
          right: 1,
          left: 1,
          down: 1,
          upRight: 1,
          upLeft: 1,
          downRight: 1,
          downLeft: 1,
        ),
      );
  factory Piece.hisya() => const Piece(
        name: '飛車',
        movableDirection: Direction(
          up: 99,
          down: 99,
          left: 99,
          right: 99,
        ),
      );
}
