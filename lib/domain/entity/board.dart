import 'package:flutter_shogi/domain/entity/piece.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'board.freezed.dart';

@freezed
class Board with _$Board {
  const factory Board({
    required List<Tile> tiles,
  }) = _Board;
  static const colSize = 9;
  static const rowSize = 9;
}

@freezed
class Tile with _$Tile {
  const factory Tile({
    // required List<Piece> pieces,
    Piece? piece,
  }) = _Tile;
}
