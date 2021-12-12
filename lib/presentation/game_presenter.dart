import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/presenter/shogi_game_presenter.dart';
import 'package:vector_math/vector_math.dart';

final movablePositionsProvider = StateProvider<List<Vector2>?>(
  (_) => null,
);

final selectedPieceToMoveProvider = StateProvider<Piece?>(
  (_) => null,
);
final selectedPieceToDropProvider = StateProvider<Piece?>(
  (_) => null,
);
final turnOwnerProvider = StateProvider<Player?>(
  (_) => null,
);

final shogiGamePresenterProvider = Provider(
  (ref) => ShogiGamePresenterImpl(
    ref.read,
  ),
);

class ShogiGamePresenterImpl extends ShogiGamePresenter {
  ShogiGamePresenterImpl(this._read);
  final Reader _read;
  @override
  void deselectedPiece() {
    _read(
      selectedPieceToMoveProvider.notifier,
    ).state = null;
    _read(
      movablePositionsProvider.notifier,
    ).state = null;
  }

  @override
  void selectedPieceToMove(
    Piece piece,
    List<Vector2> movablePositions,
  ) {
    _read(
      selectedPieceToMoveProvider.notifier,
    ).state = piece;
    _read(
      movablePositionsProvider.notifier,
    ).state = movablePositions;
  }

  @override
  void turnEnd(Player nextPlayer) {
    _read(
      turnOwnerProvider.notifier,
    ).state = nextPlayer;
  }

  @override
  void selectedPieceToDrop(
    Piece piece,
    List<Vector2> movablePositions,
  ) {
    // TODO: implement selectedPieceToDrop
  }

  @override
  void deselectedPieceToDrop() {
    // TODO: implement deselectedPieceToDrop
  }
}
