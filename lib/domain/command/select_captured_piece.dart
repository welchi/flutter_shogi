import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/command/select_piece.dart';
import 'package:flutter_shogi/domain/output/shogi_game_output.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';
import 'package:flutter_shogi/entity/model/model.dart';
import 'package:flutter_shogi/presentation/game_presenter.dart';
import 'package:flutter_shogi/state/player_state.dart';
import 'package:vector_math/vector_math.dart';

final selectCapturedPieceProvider = Provider(
  (ref) => SelectCapturedPiece(
    ref.read,
  ),
);

/// 指す駒を選択
class SelectCapturedPiece {
  SelectCapturedPiece(this._read);

  final Reader _read;
  late final PlayerRepository playerRepository = _read(
    playerRepositoryProvider.notifier,
  );
  late final PlayerRepository rivalPlayerRepository = _read(
    rivalRepositoryProvider.notifier,
  );
  late final ShogiGameOutput shogiGamePresenter = _read(
    shogiGamePresenterProvider,
  );

  void call({
    required Piece piece,
  }) {
    final playerPieces = playerRepository.getPieces();
    final rivalPieces = rivalPlayerRepository.getPieces();
    final board = getPieceMatrix(
      [...playerPieces, ...rivalPieces],
    );
    // 空いているマス目ならどこでも置ける
    final movablePositions = board
        .asMap()
        .entries
        .expand(
          (rowEntry) => rowEntry.value
              .asMap()
              .entries
              .where(
                (colEntry) => colEntry.value == null,
              )
              .map<Vector2>(
                (colEntry) => Vector2(
                  colEntry.key.toDouble(),
                  rowEntry.key.toDouble(),
                ),
              ),
        )
        .toList();
    // 移動可能な駒をハイライト
    shogiGamePresenter.selectedPieceToDrop(
      piece,
      movablePositions,
    );
  }
}
