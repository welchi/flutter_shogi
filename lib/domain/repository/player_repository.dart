import 'package:flutter_shogi/domain/entity/entity.dart';

abstract class IPlayerRepository {
  /// 盤面上に配置されたコマを取得
  List<Piece> getPieces();

  /// 持ち駒を取得
  List<Piece> getCapturedPieces();
}
