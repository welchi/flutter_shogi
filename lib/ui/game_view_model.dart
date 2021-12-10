import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/entity/player.dart';
import 'package:flutter_shogi/state/player_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

final tileGridsProvider = Provider((ref) {
  final humanPieces = ref.watch(humanPiecesProvider);
  final aiPieces = ref.watch(aiPiecesProvider);
  final tileGrids = List.generate(
    Board.rowSize,
    (i) => List.generate(
      Board.colSize,
      (j) => const BoardTile(),
    ),
  );
  for (final piece in humanPieces) {
    tileGrids[piece.piece.position?.x.toInt() ?? 0]
        [piece.piece.position?.y.toInt() ?? 0] = BoardTile(
      piece: piece,
    );
  }
  for (final piece in aiPieces) {
    tileGrids[piece.piece.position?.x.toInt() ?? 0]
        [piece.piece.position?.y.toInt() ?? 0] = BoardTile(
      piece: piece,
    );
  }
  return tileGrids;
});

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

@freezed
class PieceWithOwner with _$PieceWithOwner {
  const factory PieceWithOwner({
    required PlayerType owner,
    required Piece piece,
  }) = _PieceWithOwner;
}
