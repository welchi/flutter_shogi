import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/game/shogi_game.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';
import 'package:vector_math/vector_math.dart';

// とりあえず、プレイヤーのIDは固定値で決める
const playerId = 'you';
const rivalId = 'rival';

final playerRepositoryProvider =
    StateNotifierProvider<PlayerRepositoryImpl, Player>(
  (ref) => PlayerRepositoryImpl(
    Player(
      id: playerId,
      type: PlayerType.human,
      pieces: getInitialPieces(
        ownerId: playerId,
        isPlayer: true,
      ),
      capturedPieces: [],
    ),
  ),
);

final rivalRepositoryProvider =
    StateNotifierProvider<PlayerRepositoryImpl, Player>(
  (ref) => PlayerRepositoryImpl(
    Player(
      id: rivalId,
      type: PlayerType.human,
      pieces: getInitialPieces(
        ownerId: rivalId,
        isPlayer: false,
      ),
      capturedPieces: [],
    ),
  ),
);

class PlayerRepositoryImpl extends StateNotifier<Player> with PlayerRepository {
  PlayerRepositoryImpl(Player state) : super(state);

  @override
  List<Piece> getPieces() {
    return state.pieces;
  }

  @override
  List<Piece> getCapturedPieces() {
    return state.capturedPieces;
  }

  @override
  void initialize(List<Piece> pieces) {
    state = state.copyWith(
      pieces: pieces,
      capturedPieces: [],
    );
  }

  @override
  Piece movePiece({
    required Piece piece,
    required Vector2 dest,
  }) {
    final newPiece = piece.copyWith(
      position: dest,
    );
    final newPieces = List<Piece>.from(state.pieces)
      ..removeWhere(
        (_piece) => _piece == piece,
      )
      ..add(newPiece);
    state = state.copyWith(pieces: newPieces);
    return newPiece;
  }

  @override
  void removePiece({
    required Piece piece,
  }) {
    final newPieces = List<Piece>.from(state.pieces)
      ..removeWhere(
        (_piece) => _piece == piece,
      );
    state = state.copyWith(pieces: newPieces);
  }

  @override
  void addCapturedPiece({
    required Piece piece,
  }) {
    final newCapturedPieces = List<Piece>.from(
      state.capturedPieces,
    )..add(
        piece.copyWith(
          ownerId: state.id,
        ),
      );
    state = state.copyWith(
      capturedPieces: newCapturedPieces,
    );
  }

  @override
  String getId() {
    return state.id;
  }

  @override
  Piece dropPiece({
    required Piece piece,
    required Vector2 dest,
  }) {
    final newPiece = piece.copyWith(
      position: dest,
    );
    final newPieces = List<Piece>.from(
      state.pieces,
    )..add(newPiece);
    final newCapturedPieces = List<Piece>.from(
      state.capturedPieces,
    )..removeWhere(
        (_piece) => _piece == piece,
      );
    state = state.copyWith(
      pieces: newPieces,
      capturedPieces: newCapturedPieces,
    );
    return newPiece;
  }
}
