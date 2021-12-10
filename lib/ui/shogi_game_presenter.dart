import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/presenter/shogi_game_presenter.dart';
import 'package:vector_math/vector_math.dart';

final movablePositionsProvider = StateProvider<List<Vector2>?>(
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
    _read(movablePositionsProvider.notifier).state = null;
  }

  @override
  void selectedPieceToMove(
    List<Vector2> movablePositions,
  ) {
    _read(movablePositionsProvider.notifier).state = movablePositions;
  }
}
