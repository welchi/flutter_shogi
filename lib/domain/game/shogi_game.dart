import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/game/shogi_game_output.dart';

class ShogiGame {
  ShogiGame(this._read);
  final Reader _read;
  late final ShogiGameOutput _output;

  /// ゲームを初期化
  void initGame() {}

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
    * 
    * 
    * */
  }
}