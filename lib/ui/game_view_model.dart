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
