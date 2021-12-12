import 'package:flutter_shogi/domain/entity/entity.dart';

/// 王が取られているかチェック
bool checkIsDefeat(List<Piece> pieces) {
  return pieces
      .where(
        (piece) => piece.name == '王' || piece.name == '玉',
      )
      .toList()
      .isEmpty;
}
