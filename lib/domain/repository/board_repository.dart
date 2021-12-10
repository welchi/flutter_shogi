import 'package:flutter_shogi/domain/entity/entity.dart';

abstract class BoardRepository {
  /// 駒を初期化
  void initialize(List<Piece> pieces);

  /// 指定した駒が移動可能なタイルを取得
  List<Tile> getMovableTiles(Piece piece);
}
