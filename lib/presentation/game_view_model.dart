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

final rivalPiecesProvider = Provider((ref) {
  final pieces = ref.watch(rivalRepositoryProvider).pieces;
  return pieces;
});

final playerPiecesProvider = Provider((ref) {
  final pieces = ref.watch(playerRepositoryProvider).pieces;
  return pieces;
});

final playerIdProvider = Provider((ref) {
  final id = ref.watch(playerRepositoryProvider).id;
  return id;
});

final rivalIdProvider = Provider((ref) {
  final id = ref.watch(rivalRepositoryProvider).id;
  return id;
});

final highlightableTileMatrixProvider = Provider(
  (ref) {
    final humanPieces = ref.watch(playerPiecesProvider);
    final aiPieces = ref.watch(rivalPiecesProvider);
    final movalPositions = ref.watch(movablePositionsProvider);
    final highlightableMatrix = getHighlightableTileMatrix(
      playerPieces: humanPieces,
      rivalPieces: aiPieces,
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
  required List<Piece> playerPieces,
  required List<Piece> rivalPieces,
  required List<Vector2>? movalPositions,
}) {
  final tileMatrix = getPieceMatrix(
    [...playerPieces, ...rivalPieces],
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
    Piece? piece,
    required Vector2 position,
  }) = _HighlightableBoardTile;
}

@freezed
class BoardTile with _$BoardTile {
  const factory BoardTile({
    Piece? piece,
  }) = _BoardTile;
}

@freezed
class GameViewModel with _$GameViewModel {
  const factory GameViewModel({
    required Player me,
    required Player cpu,
  }) = _GameViewModel;
}
