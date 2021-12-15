import 'package:flutter_shogi/entity/model/model.dart';

/// 王が存在するかチェック
bool checkHasOusho(List<Piece> pieces) {
  return pieces
      .where(
        (piece) => piece.name == '王' || piece.name == '玉',
      )
      .toList()
      .isNotEmpty;
}
