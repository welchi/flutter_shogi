import 'package:vector_math/vector_math.dart';

abstract class ShogiGamePresenter {
  /// 移動する駒を選択した
  void selectedPieceToMove(List<Vector2> movablePositions);

  /// 移動する駒を選択解除した
  void deselectedPiece();
}
