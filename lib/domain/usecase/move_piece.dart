import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/direction.dart';
import 'package:flutter_shogi/domain/entity/piece.dart';

class MovePiece {
  const MovePiece(this._read);
  final Reader _read;
  void call({
    required Piece piece,
    required Direction movingDirection,
  }) {
    // pieceをmoveDirectionだけ動かす？(いや違うくないか？)
    // セルを渡すか
    // 移動先に相手のコマがあれば、自分の持ち駒として取得
    // 勝敗についてチェック
    // 結果をアプトプット(状態更新)

    // コマが画面を超えて移動しないかチェック
    // こまの移動可能な線上に、相手のコマがあるかチェック(PlayerをPieceに持たせる必要がある)
    //
  }
}
