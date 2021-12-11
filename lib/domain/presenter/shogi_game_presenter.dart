import 'package:flutter_shogi/domain/command/command.dart';
import 'package:vector_math/vector_math.dart';

abstract class ShogiGamePresenter {
  /// 移動する駒を選択した
  void selectedPieceToMove(
      PieceWithOwner piece, List<Vector2> movablePositions);

  /// 移動する駒を選択解除した
  void deselectedPiece();
}
