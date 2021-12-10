import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/repository/board_repository.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';
import 'package:vector_math/vector_math.dart';

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
  PieceWithOwner rawPiece,
  List<PieceWithOwner> pieces,
) {
  final boardSizeX = Board.colSize - 1;
  final boardSizeY = Board.rowSize - 1;
  final owner = rawPiece.owner;
  final piece = rawPiece.piece;
  final movableDirections = piece.movableDirections;
  if (owner == PlayerType.human) {
    // final maxUp = boardSizeY - piece.position!.y;
    // final maxRight = boardSizeX - piece.position!.x;
    // final maxDown = piece.position!.y;
    // final maxLeft = piece.position!.x;
    final directions = movableDirections.expand((movement) {
      // final indexes = List.generate(movement.count, (index) => index).toList();
      // for (final i in indexes) {}
      // int x=piece.position!.x.toInt();
      // int y=piece.position!.y.toInt();
      // final position = piece.position!;
      final movablePositions = <Vector2>[];
      for (var i = 0; i < movement.count; i++) {
        final nextPosition =
            piece.position! + (movement.direction.scaled(i + 1));
        if (nextPosition.x > boardSizeX || nextPosition.y > boardSizeY) {
          break;
        }
      }
      // piece.position.
      return movablePositions;
    }).toList();
  }
}

@immutable
class PieceWithOwner {
  const PieceWithOwner(
    this.owner,
    this.piece,
  );
  final PlayerType owner;
  final Piece piece;
}
