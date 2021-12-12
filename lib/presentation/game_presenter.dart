import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/presenter/shogi_game_presenter.dart';
import 'package:flutter_shogi/route.dart';
import 'package:vector_math/vector_math.dart';

enum MoveOrDrop {
  move,
  drop,
}
final movablePositionsProvider = StateProvider<List<Vector2>?>(
  (_) => null,
);

final selectedActionProvider = StateProvider<MoveOrDrop?>(
  (_) => null,
);

final selectedPieceProvider = StateProvider<Piece?>(
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
      selectedPieceProvider.notifier,
    ).state = null;
    _read(
      selectedActionProvider.notifier,
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
    deselectedPiece();
    _read(
      selectedPieceProvider.notifier,
    ).state = piece;
    _read(
      selectedActionProvider.notifier,
    ).state = MoveOrDrop.move;
    _read(
      movablePositionsProvider.notifier,
    ).state = movablePositions;
  }

  @override
  void selectedPieceToDrop(
    Piece piece,
    List<Vector2> movablePositions,
  ) {
    deselectedPiece();
    _read(
      selectedPieceProvider.notifier,
    ).state = piece;
    _read(
      selectedActionProvider.notifier,
    ).state = MoveOrDrop.drop;
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
  Future<bool> askPromoteOrNot() async {
    final context = _read(
      navigatorKeyProvider,
    ).currentContext;
    final result = await showOkCancelAlertDialog(
      context: context!,
      message: '成りますか？',
    );
    if (result == OkCancelResult.ok) {
      return true;
    }
    return false;
  }

  @override
  Future<void> showResultDialog({
    required String title,
    required String content,
  }) {
    final context = _read(
      navigatorKeyProvider,
    ).currentContext;
    return showAlertDialog(
      context: context!,
      title: title,
      message: content,
    );
  }
}
