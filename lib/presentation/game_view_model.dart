import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/command/command.dart';
import 'package:flutter_shogi/domain/command/select_piece.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/entity/player.dart';
import 'package:flutter_shogi/state/player_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vector_math/vector_math.dart';

import 'game_presenter.dart';

part 'game_view_model.freezed.dart';

final aiPiecesProvider = Provider((ref) {
  final pieces = ref.watch(aiPlayerRepositoryProvider).pieces;
  return pieces
      .map(
        (piece) => PieceWithOwner(
          owner: PlayerType.ai,
          piece: piece,
        ),
      )
      .toList();
});

final humanPiecesProvider = Provider((ref) {
  final pieces = ref.watch(humanPlayerRepositoryProvider).pieces;
  return pieces
      .map(
        (piece) => PieceWithOwner(
          owner: PlayerType.human,
          piece: piece,
        ),
      )
      .toList();
});

final highlightableTileMatrixProvider = Provider(
  (ref) {
    final humanPieces = ref.watch(humanPiecesProvider);
    final aiPieces = ref.watch(aiPiecesProvider);
    final movalPositions = ref.watch(movablePositionsProvider);
    final highlightableMatrix = getHighlightableTileMatrix(
      humanPieces: humanPieces,
      aiPieces: aiPieces,
      movalPositions: movalPositions,
    );
    return highlightableMatrix.reversed.toList();
  },
);

final flattenTilesProvider = Provider(
  (ref) {
    final tileMatrix = ref.watch(highlightableTileMatrixProvider);
    return tileMatrix.expand((tile) => tile).toList();
  },
);

List<List<HighlightableBoardTile>> getHighlightableTileMatrix({
  required List<PieceWithOwner> humanPieces,
  required List<PieceWithOwner> aiPieces,
  required List<Vector2>? movalPositions,
}) {
  final tileMatrix = getPieceMatrix(
    [...humanPieces, ...aiPieces],
  );
  final highlightableTileMatrix = tileMatrix
      .asMap()
      .entries
      .map(
        (rowEntry) => rowEntry.value
            .asMap()
            .entries
            .map(
              (pieceEntry) => HighlightableBoardTile(
                position: Vector2(
                  pieceEntry.key.toDouble(),
                  rowEntry.key.toDouble(),
                ),
                piece: pieceEntry.value,
              ),
            )
            .toList(),
      )
      .toList();
  if (movalPositions == null) {
    return highlightableTileMatrix;
  }
  for (final position in movalPositions) {
    final tile = highlightableTileMatrix[position.y.toInt()][position.x.toInt()]
        .copyWith(
      isMovable: true,
    );
    highlightableTileMatrix[position.y.toInt()][position.x.toInt()] = tile;
  }
  return highlightableTileMatrix;
}

@freezed
class HighlightableBoardTile with _$HighlightableBoardTile {
  const factory HighlightableBoardTile({
    @Default(false) bool isMovable,
    PieceWithOwner? piece,
    required Vector2 position,
  }) = _HighlightableBoardTile;
}

@freezed
class BoardTile with _$BoardTile {
  const factory BoardTile({
    PieceWithOwner? piece,
  }) = _BoardTile;
}

@freezed
class GameViewModel with _$GameViewModel {
  const factory GameViewModel({
    required Player me,
    required Player cpu,
  }) = _GameViewModel;
}
