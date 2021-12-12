import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:vector_math/vector_math.dart';

abstract class ShogiGamePresenter {
  /// 移動する駒を選択した
  void selectedPieceToMove(
    Piece piece,
    List<Vector2> movablePositions,
  );

  /// 駒を選択解除した
  void deselectedPiece();

  /// 指す駒を選択した
  void selectedPieceToDrop(
    Piece piece,
    List<Vector2> movablePositions,
  );

  // /// 指す駒を選択解除した
  // void deselectedPieceToDrop();

  /// ターン終了
  void turnEnd(
    Player nextPlayer,
  );
}
