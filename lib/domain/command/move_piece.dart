import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/game/game.dart';
import 'package:flutter_shogi/domain/presenter/presenter.dart';
import 'package:flutter_shogi/domain/repository/repository.dart';
import 'package:flutter_shogi/presentation/game_presenter.dart';
import 'package:flutter_shogi/state/player_state.dart';
import 'package:vector_math/vector_math.dart';

final movePieceProvider = Provider(
  (ref) => MovePiece(
    ref.read,
  ),
);

// この前に、移動可能なタイルをハイライト？
// 斜め、横と、
class MovePiece {
  MovePiece(this._read);
  final Reader _read;
  late final PlayerRepository playerRepository = _read(
    playerRepositoryProvider.notifier,
  );
  late final PlayerRepository rivalRepository = _read(
    rivalRepositoryProvider.notifier,
  );
  late final ShogiGamePresenter shogiGamePresenter = _read(
    shogiGamePresenterProvider,
  );
  late final ShogiGame game = _read(
    shogiGameProvider,
  );

  void call({
    required Piece piece,
    required Vector2 dest,
  }) {
    final playerId = playerRepository.getId();
    final newPiece = piece.ownerId == playerId
        ? playerRepository.movePiece(
            piece: piece,
            dest: dest,
          )
        : rivalRepository.movePiece(
            piece: piece,
            dest: dest,
          );
    shogiGamePresenter.deselectedPiece();
    game.update(
      piece.copyWith(
        piece: newPiece,
      ),
    );

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
}
