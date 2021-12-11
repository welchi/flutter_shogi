import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:vector_math/vector_math.dart';

abstract class PlayerRepository {
  /// 駒を初期化
  void initialize(List<Piece> pieces);

  /// 盤面上に配置された駒を取得
  List<Piece> getPieces();

  /// 持ち駒を取得
  List<Piece> getCapturedPieces();

  /// 駒を移動
  void movePiece({
    required Piece piece,
    required Vector2 dest,
  });
}
