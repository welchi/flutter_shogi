import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShogiGame {
  const ShogiGame(this._read);
  final Reader _read;
  // 駒などを初期化
  void init() {}

  // ターンごとの判定
  void update() {
    // 状況チェック
    // どちらに王がなければ、勝ち負け決定

    // 成れる駒があるならなる
  }
}
