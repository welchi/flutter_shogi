import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/output/shogi_output.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';
import 'package:flutter_shogi/presentation/game_presenter.dart';
import 'package:flutter_shogi/state/player_state.dart';
import 'package:vector_math/vector_math.dart';

final selectPieceProvider = Provider(
  (ref) => SelectPiece(
    ref.read,
  ),
);

/// 移動する駒を選択
class SelectPiece {
  SelectPiece(this._read);
  final Reader _read;
  late final PlayerRepository playerRepository = _read(
    playerRepositoryProvider.notifier,
  );
  late final PlayerRepository rivalPlayerRepository = _read(
    rivalRepositoryProvider.notifier,
  );
  late final ShogiOutput shogiGamePresenter = _read(
    shogiGamePresenterProvider,
  );

  void call({
    required Piece piece,
  }) {
    final playerPieces = playerRepository.getPieces();
    final rivalPieces = rivalPlayerRepository.getPieces();

    final playerId = playerRepository.getId();
    // 駒が動けるエリアを捜査
    final movablePositions = getMovablePositions(
      piece: piece,
      pieces: [...playerPieces, ...rivalPieces],
      playerId: playerId,
    );
    // 移動可能な駒をハイライト
    shogiGamePresenter.selectedPieceToMove(
      piece,
      movablePositions,
    );
  }
}

List<Vector2> getMovablePositions({
  required Piece piece,
  required List<Piece> pieces,
  required String playerId,
}) {
  final isPlayer = piece.ownerId == playerId;
  const boardSizeX = Board.colSize - 1;
  const boardSizeY = Board.rowSize - 1;
  final movableDirections = piece.movableDirections;
  final board = getPieceMatrix(pieces);
  final directions = movableDirections.expand((movement) {
    final movablePositions = <Vector2>[];
    for (var i = 0; i < movement.count; i++) {
      final nextPosition = isPlayer
          ? piece.position! + (movement.direction.scaled(i + 1))
          : piece.position! - (movement.direction.scaled(i + 1));
      if (nextPosition.x > boardSizeX || nextPosition.y > boardSizeY) {
        break;
      }
      if (nextPosition.x < 0 || nextPosition.y < 0) {
        break;
      }
      final nextTile = board[nextPosition.y.toInt()][nextPosition.x.toInt()];
      // 移動先に駒がないなら進んで良し
      if (nextTile == null) {
        movablePositions.add(nextPosition);
        continue;
      }
      // 移動先に自分の駒が存在する
      if ((isPlayer && nextTile.ownerId == playerId) ||
          (!isPlayer && nextTile.ownerId != playerId)) {
        break;
        // 移動先に相手の駒が存在する
      } else {
        movablePositions.add(nextPosition);
        break;
      }
    }
    return movablePositions;
  }).toList();
  return directions;
}

List<List<Piece?>> getPieceMatrix(List<Piece> pieces) {
  final pieceMatrix = List.generate(
    Board.rowSize,
    (i) => List<Piece?>.generate(
      Board.colSize,
      (j) => null,
    ),
  );
  for (final piece in pieces) {
    pieceMatrix[piece.position?.y.toInt() ?? 0]
        [piece.position?.x.toInt() ?? 0] = piece;
  }
  return pieceMatrix;
}
