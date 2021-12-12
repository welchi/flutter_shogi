import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/command/select_piece.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/presenter/shogi_game_presenter.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';
import 'package:flutter_shogi/presentation/game_presenter.dart';
import 'package:flutter_shogi/state/player_state.dart';

final selectCapturedPieceProvider = Provider(
  (ref) => SelectCapturedPiece(
    ref.read,
  ),
);

class SelectCapturedPiece {
  SelectCapturedPiece(this._read);

  final Reader _read;
  late final PlayerRepository playerRepository = _read(
    playerRepositoryProvider.notifier,
  );
  late final PlayerRepository rivalPlayerRepository = _read(
    rivalRepositoryProvider.notifier,
  );
  late final ShogiGamePresenter shogiGamePresenter = _read(
    shogiGamePresenterProvider,
  );

  void call({
    required Piece piece,
  }) {
    final playerPieces = playerRepository.getPieces();
    final rivalPieces = rivalPlayerRepository.getPieces();
    final playerId = playerRepository.getId();
    final board = getPieceMatrix([...playerPieces, ...rivalPieces]);
    // final movablePositions =
  }
}
