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
  Piece movePiece({
    required Piece piece,
    required Vector2 dest,
  });

  /// 駒を削除
  void removePiece({
    required Piece piece,
  });

  /// 持ち駒を追加
  void addCapturedPiece({
    required Piece piece,
  });
}
