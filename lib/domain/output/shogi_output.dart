import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:vector_math/vector_math.dart';

abstract class ShogiOutput {
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

  /// 結果についてのダイアログを表示
  Future<void> showResultDialog({
    required String title,
    required String content,
  });

  /// 成るかチェック
  Future<bool> askPromoteOrNot();

  /// ターン終了
  void turnEnd(
    String nextPlayerId,
  );
}
