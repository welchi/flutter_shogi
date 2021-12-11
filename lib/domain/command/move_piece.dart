import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/command/command.dart';
import 'package:flutter_shogi/domain/entity/piece.dart';
import 'package:flutter_shogi/domain/repository/repository.dart';
import 'package:flutter_shogi/state/player_state.dart';
import 'package:vector_math/vector_math.dart';

// この前に、移動可能なタイルをハイライト？
// 斜め、横と、
class MovePiece {
  MovePiece(this._read);
  final Reader _read;
  late final PlayerRepository humanPlayerRepository = _read(
    humanPlayerRepositoryProvider.notifier,
  );
  late final PlayerRepository aiPlayerRepository = _read(
    aiPlayerRepositoryProvider.notifier,
  );
  void call({
    required PieceWithOwner piece,
    required Vector2 destPosition,
  }) {
    // final nextPiece = piece.
    // pieceをmoveDirectionだけ動かす？(いや違うくないか？)
    // セルを渡すか

    // で、そのセルへ移動できるかまずチェック
    // 移動途中に相手のコマがあれば、そこでストップする

    // 移動先に相手のコマがあれば、自分の持ち駒として取得
    // 勝敗についてチェック
    // 結果をアプトプット(状態更新)

    // コマが画面を超えて移動しないかチェック
    // こまの移動可能な線上に、相手のコマがあるかチェック(PlayerをPieceに持たせる必要がある)
    //
  }

  bool _canMove({
    required Piece piece,
    required Vector2 vector,
  }) {
    // pieceのセルを取得
    // 移動先のセルとの、
    // セル間の距離を算出
    // pieceのmovableが距離を移動可能か計算
    //
    //
    // final movableDirection = piece.movableDirection;
    return false;
    // final zippedDirection =
    //     zip<List<Direction>>([piece.movableDirection, movingDirection])
    //         .toList();
  }
}
