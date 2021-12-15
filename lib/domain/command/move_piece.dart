import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/game/shogi_game.dart';
import 'package:flutter_shogi/domain/output/shogi_game_output.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';
import 'package:flutter_shogi/entity/model/model.dart';
import 'package:flutter_shogi/presenter/game_presenter.dart';
import 'package:flutter_shogi/state/player_state.dart';
import 'package:vector_math/vector_math.dart';

final movePieceProvider = Provider(
  (ref) => MovePiece(
    ref.read,
  ),
);

/// 駒を移動させる
class MovePiece {
  MovePiece(this._read);
  final Reader _read;
  late final PlayerRepository playerRepository = _read(
    playerRepositoryProvider.notifier,
  );
  late final PlayerRepository rivalRepository = _read(
    rivalRepositoryProvider.notifier,
  );
  late final ShogiGameOutput shogiGamePresenter = _read(
    shogiGamePresenterProvider,
  );
  late final ShogiGame game = _read(
    shogiGameProvider,
  );

  void call({
    required Piece piece,
    required Vector2 dest,
  }) {
    final playerId = playerRepository.getId();
    final newPiece = piece.ownerId == playerId
        ? playerRepository.movePiece(
            piece: piece,
            dest: dest,
          )
        : rivalRepository.movePiece(
            piece: piece,
            dest: dest,
          );
    shogiGamePresenter.deselectedPiece();
    game.update(
      newPiece,
    );
  }
}
