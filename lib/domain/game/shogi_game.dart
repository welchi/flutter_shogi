import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/game/shogi_game_output.dart';
import 'package:vector_math/vector_math.dart';

class ShogiGame {
  ShogiGame(this._read);
  final Reader _read;
  late final ShogiGameOutput _output;

  /// ゲームを初期化
  void initGame() {
    // 先攻で歩兵を並べる
  }

  List<Piece> getInitialPieces({
    bool isSenko = true,
  }) {
    final huhyoRowY = isSenko ? 2 : Board.colSize - 1 - 2;
    final hisyakakuRowY = isSenko ? 1 : Board.colSize - 1 - 1;
    final oushoRowY = isSenko ? 0 : Board.colSize - 1 - 0;

    final huhyoRow = List.generate(
      Board.rowSize,
      (x) => Piece.huhyo(
        Vector2(
          x.toDouble(),
          huhyoRowY.toDouble(),
        ),
      ),
    ).toList();

    // final kakuX = isSenko ? 1 : 7;
    // final hisyaX = isSenko ? 7 : 1;
    final hisyakakuRow = [
      Piece.kakugyo(
        Vector2(
          isSenko ? 1 : 7,
          hisyakakuRowY.toDouble(),
        ),
      ),
      Piece.hisha(
        Vector2(
          isSenko ? 7 : 1,
          hisyakakuRowY.toDouble(),
        ),
      ),
    ];
  }

  // ターンごとの判定
  void update() {
    // 状況チェック
    /*
    * final sentePiecies=senteRepository.state.piecies
    * final gotePiecies = goteRepository.state.piecies
    * final board = boardRepository.state
    * 
    * どちらに王がなければ、勝ち負け決定
    * if(hasOu(sentePiecies))
    * gameOutput.notifyEnd()
    * if(hasOu(gotePiecies))
    * gameOutput.notifyEnd()
    * 
    * 2歩をチェック
    * if()
    * gameOutput.notifyEnd()
    * 
    * 各タイルをチェックし、駒が重なっていたら、取った方の持ち駒にする
    * 
    * 成れるなら、成るか確認
    * trueなら成る
    * 
    * 
    * 
    * */
  }
}
