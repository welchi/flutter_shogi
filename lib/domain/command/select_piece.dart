import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';
import 'package:vector_math/vector_math.dart';

class SelectPiece {
  SelectPiece(this._read);

  final Reader _read;
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
    final movablePositions = getMovablePositions(
      // todo: 後で人間、AI交互に
      PieceWithOwner(PlayerType.human, piece),
      [...humanPieces, ...aiPieces],
    );
    // 移動可能な駒をハイライト
  }
}

List<Vector2> getMovablePositions(
  PieceWithOwner rawPiece,
  List<PieceWithOwner> pieces,
) {
  const boardSizeX = Board.colSize - 1;
  const boardSizeY = Board.rowSize - 1;
  final owner = rawPiece.owner;
  final piece = rawPiece.piece;
  final movableDirections = piece.movableDirections;
  if (owner == PlayerType.human) {
    final board = getPieceMatrix(pieces);
    final directions = movableDirections.expand((movement) {
      final movablePositions = <Vector2>[];
      for (var i = 0; i < movement.count; i++) {
        final nextPosition =
            piece.position! + (movement.direction.scaled(i + 1));
        if (nextPosition.x > boardSizeX || nextPosition.y > boardSizeY) {
          break;
        }
        final nextTile = board[nextPosition.y.toInt()][nextPosition.x.toInt()];
        // 移動先に駒がないなら進んで良し
        if (nextTile == null) {
          movablePositions.add(nextPosition);
          continue;
        }
        // 移動先に自分の駒が存在する
        if (nextTile.owner == PlayerType.human) {
          break;
        }
        // 移動先に相手の駒が存在する
        movablePositions.add(nextPosition);
        break;
      }
      return movablePositions;
    }).toList();
    return directions;
  }
  // todo: AIの場合
  return [];
}

List<List<PieceWithOwner?>> getPieceMatrix(List<PieceWithOwner> pieces) {
  final pieceMatrix = List.generate(
    Board.rowSize,
    (i) => List<PieceWithOwner?>.generate(
      Board.colSize,
      (j) => null,
    ),
  );
  for (final piece in pieces) {
    pieceMatrix[piece.piece.position?.y.toInt() ?? 0]
        [piece.piece.position?.x.toInt() ?? 0] = piece;
  }
  return pieceMatrix;
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
