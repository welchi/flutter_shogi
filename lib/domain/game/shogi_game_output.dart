import 'package:flutter_shogi/domain/entity/piece.dart';

abstract class ShogiGameOutput {
  /// ゲーム終了条件を通知
  void notifyGameSet();

  /// 成り
  void promotePiece(Piece piece);
}
