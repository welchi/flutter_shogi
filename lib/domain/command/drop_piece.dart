import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/game/game.dart';
import 'package:flutter_shogi/domain/presenter/presenter.dart';
import 'package:flutter_shogi/domain/repository/repository.dart';
import 'package:flutter_shogi/presentation/game_presenter.dart';
import 'package:flutter_shogi/state/player_state.dart';
import 'package:vector_math/vector_math.dart';

final dropPieceProvider = Provider(
  (ref) => DropPiece(
    ref.read,
  ),
);

// この前に、移動可能なタイルをハイライト？
// 斜め、横と、
class DropPiece {
  DropPiece(this._read);
  final Reader _read;
  late final PlayerRepository playerRepository = _read(
    playerRepositoryProvider.notifier,
  );
  late final PlayerRepository rivalRepository = _read(
    rivalRepositoryProvider.notifier,
  );
  late final ShogiGamePresenter shogiGamePresenter = _read(
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
    shogiGamePresenter.deselectedPieceToDrop();
    game.update(
      newPiece,
    );
  }
}
