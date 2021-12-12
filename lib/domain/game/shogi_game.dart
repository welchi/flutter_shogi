import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/command/command.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/game/shogi_game_output.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';
import 'package:flutter_shogi/domain/rule/judgement.dart';
import 'package:flutter_shogi/state/player_state.dart';
import 'package:vector_math/vector_math.dart';

final shogiGameProvider = Provider(
  (ref) => ShogiGame(
    ref.read,
  ),
);

class ShogiGame {
  ShogiGame(this._read);
  final Reader _read;
  late final ShogiGameOutput _output;
  // late final PlayerRepository senteRepository =
  //     _read(humanPlayerRepositoryProvider.notifier);

  late final PlayerRepository meRepository = _read(
    humanPlayerRepositoryProvider.notifier,
  );
  late final PlayerRepository opponentRepository = _read(
    aiPlayerRepositoryProvider.notifier,
  );

  /// ゲームを初期化
  void initGame() {
    // 先攻で歩兵を並べる
    final senkoPieces = getInitialPieces();
    final kokoPieces = getInitialPieces(isSenko: false);
    final senkoPlayer = Player.human(
      pieces: senkoPieces,
      capturedPieces: [],
    );
    final kokoPlayer = Player.ai(
      pieces: kokoPieces,
      capturedPieces: [],
    );
  }

  /// ターンごとの判定
  /// [newPiece]はこのターンで移動した駒
  void update(PieceWithOwner newPiece) {
    final myPieces = meRepository.getPieces();
    final opponentPieces = opponentRepository.getPieces();

    // 動かした先に駒があれば、取得
    if (newPiece.owner == PlayerType.human) {
      final capturedPiece = opponentPieces.firstWhereOrNull(
        (piece) => piece.position == newPiece.piece.position,
      );
      if (capturedPiece != null) {
        opponentRepository.removePiece(
          piece: capturedPiece,
        );
      }
    }

    // 動かした先に駒があれば、取得
    if (newPiece.owner == PlayerType.ai) {
      final capturedPiece = myPieces.firstWhereOrNull(
        (piece) => piece.position == newPiece.piece.position,
      );
      if (capturedPiece != null) {
        meRepository.removePiece(
          piece: capturedPiece,
        );
      }
    }

    // * どちらに王がなければ、勝ち負け決定
    final newMyPieces = meRepository.getPieces();
    final newOpponentPieces = opponentRepository.getPieces();
    final meDefeat = checkIsDefeat(newMyPieces);
    final opponentDefeat = checkIsDefeat(newOpponentPieces);

    //  2歩をチェック

    // 成れるなら成るか確認

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

/// 駒の初期配置を取得
List<Piece> getInitialPieces({
  bool isSenko = true,
}) {
  final huhyoRowY = (isSenko ? 2 : Board.colSize - 1 - 2).toDouble();
  final hisyakakuRowY = (isSenko ? 1 : Board.colSize - 1 - 1).toDouble();
  final oushoRowY = (isSenko ? 0 : Board.colSize - 1 - 0).toDouble();

  final huhyoRow = List.generate(
    Board.rowSize,
    (x) => Piece.huhyo(
      Vector2(
        x.toDouble(),
        huhyoRowY.toDouble(),
      ),
    ),
  ).toList();

  final hisyakakuRow = [
    Piece.kakugyo(
      Vector2(
        isSenko ? 1 : 7,
        hisyakakuRowY,
      ),
    ),
    Piece.hisha(
      Vector2(
        isSenko ? 7 : 1,
        hisyakakuRowY,
      ),
    ),
  ];

  final oushoRow = [
    Piece.kyosha(
      Vector2(
        isSenko ? 0 : 8,
        oushoRowY,
      ),
    ),
    Piece.keima(
      Vector2(
        isSenko ? 1 : 7,
        oushoRowY,
      ),
    ),
    Piece.ginsho(
      Vector2(
        isSenko ? 2 : 6,
        oushoRowY,
      ),
    ),
    Piece.kinsho(
      Vector2(
        isSenko ? 3 : 5,
        oushoRowY,
      ),
    ),
    Piece.ousho(
      Vector2(
        isSenko ? 4 : 4,
        oushoRowY,
      ),
    ),
    Piece.kinsho(
      Vector2(
        isSenko ? 5 : 3,
        oushoRowY,
      ),
    ),
    Piece.ginsho(
      Vector2(
        isSenko ? 6 : 2,
        oushoRowY,
      ),
    ),
    Piece.keima(
      Vector2(
        isSenko ? 7 : 1,
        oushoRowY,
      ),
    ),
    Piece.kyosha(
      Vector2(
        isSenko ? 8 : 0,
        oushoRowY,
      ),
    ),
  ];
  return [...huhyoRow, ...hisyakakuRow, ...oushoRow];
}
