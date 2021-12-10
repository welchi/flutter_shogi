import 'package:flutter_shogi/domain/entity/entity.dart';

abstract class PlayerRepository {
  /// 駒を初期化
  void initialize(List<Piece> pieces);

  /// 盤面上に配置された駒を取得
  List<Piece> getPieces();

  /// 持ち駒を取得
  List<Piece> getCapturedPieces();
}
