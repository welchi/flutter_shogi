import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  late final PlayerRepository playerRepository = _read(
    playerRepositoryProvider.notifier,
  );
  late final PlayerRepository rivalRepository = _read(
    rivalRepositoryProvider.notifier,
  );
  //
  // /// ゲームを初期化
  // void initGame() {
  //   // 先攻で歩兵を並べる
  //   final senkoPieces = getInitialPieces();
  //   final kokoPieces = getInitialPieces(isOpponent: false);
  //   // final senkoPlayer = Player(
  //   //   pieces: senkoPieces,
  //   //   capturedPieces: [],
  //   // );
  //   // final kokoPlayer = Player(
  //   //   pieces: kokoPieces,
  //   //   capturedPieces: [],
  //   // );
  // }

  /// 駒を取得
  /// [pieces]に[position]に配置された駒があるならば取得
  Piece? searchPiece({
    required Vector2 position,
    required List<Piece> pieces,
  }) {
    return pieces.firstWhereOrNull(
      (piece) => piece.position == position,
    );
  }

  void callCaptureProcess({
    required Piece newPiece,
    required List<Piece> pieces,
    required void Function(Piece piece) removePiece,
    required void Function(Piece piece) capturePiece,
  }) {
    final capturedPiece = searchPiece(
      position: newPiece.position!,
      pieces: pieces,
    );
    if (capturedPiece != null) {
      removePiece(capturedPiece);
      capturePiece(capturedPiece);
    }
  }

  /// ターンごとの判定
  /// [newPiece]はこのターンで移動した駒
  void update(Piece newPiece) {
    // final myPieces = playerRepository.getPieces();
    // final opponentPieces = rivalRepository.getPieces();

    final playerId = playerRepository.getId();
    // 駒の取得処理を実行
    if (newPiece.ownerId == playerId) {
      callCaptureProcess(
        newPiece: newPiece,
        pieces: rivalRepository.getPieces(),
        removePiece: (Piece piece) => rivalRepository.removePiece(
          piece: piece,
        ),
        capturePiece: (Piece piece) => rivalRepository.addCapturedPiece(
          piece: piece,
        ),
      );
    } else {}

    // // 動かした先に駒があれば、取得
    // if (newPiece.owner == PlayerType.ai) {
    //   final capturedPiece = myPieces.firstWhereOrNull(
    //     (piece) => piece.position == newPiece.piece.position,
    //   );
    //   if (capturedPiece != null) {
    //     playerRepository.removePiece(
    //       piece: capturedPiece,
    //     );
    //   }
    // }

    // * どちらに王がなければ、勝ち負け決定
    final newMyPieces = playerRepository.getPieces();
    final newOpponentPieces = rivalRepository.getPieces();
    final meDefeat = checkIsDefeat(newMyPieces);
    final opponentDefeat = checkIsDefeat(newOpponentPieces);

    // 2歩をチェック

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
  required String ownerId,
  bool isOpponent = true,
}) {
  final huhyoRowY = (isOpponent ? 2 : Board.colSize - 1 - 2).toDouble();
  final hisyakakuRowY = (isOpponent ? 1 : Board.colSize - 1 - 1).toDouble();
  final oushoRowY = (isOpponent ? 0 : Board.colSize - 1 - 0).toDouble();

  final huhyoRow = List.generate(
    Board.rowSize,
    (x) => Piece.huhyo(
      Vector2(
        x.toDouble(),
        huhyoRowY.toDouble(),
      ),
      ownerId,
    ),
  ).toList();

  final hisyakakuRow = [
    Piece.kakugyo(
      Vector2(
        isOpponent ? 1 : 7,
        hisyakakuRowY,
      ),
      ownerId,
    ),
    Piece.hisha(
      Vector2(
        isOpponent ? 7 : 1,
        hisyakakuRowY,
      ),
      ownerId,
    ),
  ];

  final oushoRow = [
    Piece.kyosha(
      Vector2(
        isOpponent ? 0 : 8,
        oushoRowY,
      ),
      ownerId,
    ),
    Piece.keima(
      Vector2(
        isOpponent ? 1 : 7,
        oushoRowY,
      ),
      ownerId,
    ),
    Piece.ginsho(
      Vector2(
        isOpponent ? 2 : 6,
        oushoRowY,
      ),
      ownerId,
    ),
    Piece.kinsho(
      Vector2(
        isOpponent ? 3 : 5,
        oushoRowY,
      ),
      ownerId,
    ),
    Piece.ousho(
      Vector2(
        isOpponent ? 4 : 4,
        oushoRowY,
      ),
      ownerId,
    ),
    Piece.kinsho(
      Vector2(
        isOpponent ? 5 : 3,
        oushoRowY,
      ),
      ownerId,
    ),
    Piece.ginsho(
      Vector2(
        isOpponent ? 6 : 2,
        oushoRowY,
      ),
      ownerId,
    ),
    Piece.keima(
      Vector2(
        isOpponent ? 7 : 1,
        oushoRowY,
      ),
      ownerId,
    ),
    Piece.kyosha(
      Vector2(
        isOpponent ? 8 : 0,
        oushoRowY,
      ),
      ownerId,
    ),
  ];
  return [...huhyoRow, ...hisyakakuRow, ...oushoRow];
}
