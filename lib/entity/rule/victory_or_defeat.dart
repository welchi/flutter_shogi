import 'package:flutter_shogi/domain/entity/entity.dart';

/// 王が存在するかチェック
bool checkHasOusho(List<Piece> pieces) {
  return pieces
      .where(
        (piece) => piece.name == '王' || piece.name == '玉',
      )
      .toList()
      .isNotEmpty;
}
