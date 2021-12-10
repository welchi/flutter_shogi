import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/repository/board_repository.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';

class SelectPiece {
  SelectPiece(this._read);

  final Reader _read;
  late final BoardRepository boardRepository;
  late final PlayerRepository humanPlayerRepository;
  late final PlayerRepository aiPlayerRepository;

  void call({
    required Piece piece,
  }) {
    final humanPieces = humanPlayerRepository
        .getPieces()
        .map(
          (piece) => PieceWithOwner(
            PlayerType.human,
            piece,
          ),
        )
        .toList();
    final aiPieces = aiPlayerRepository
        .getPieces()
        .map(
          (piece) => PieceWithOwner(
            PlayerType.human,
            piece,
          ),
        )
        .toList();

    // 駒が動けるエリアを捜査

    final movableTiles = getMovableTiles(
      // todo: 後で人間、AI交互に
      PieceWithOwner(PlayerType.human, piece),
      [...humanPieces, ...aiPieces],
    );
    // 移動可能な駒をハイライト
  }
}

List<Tile> getMovableTiles(
  PieceWithOwner piece,
  List<PieceWithOwner> pieces,
) {
  final boardMaxY = Board.rowSize-1;
  final boardMaxX = Board.colSize-1;

  final movableDirections = piece.piece.movableDirections;
  if (piece.owner == PlayerType.human) {
    final maxUp = min(boardMaxY,)
  }
}

List<>

@immutable
class PieceWithOwner {
  const PieceWithOwner(
    this.owner,
    this.piece,
  );
  final PlayerType owner;
  final Piece piece;
}
