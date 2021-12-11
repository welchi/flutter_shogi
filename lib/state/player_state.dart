import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/game/shogi_game.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';
import 'package:vector_math/vector_math.dart';

final humanPlayerRepositoryProvider =
    StateNotifierProvider<PlayerRepositoryImpl, Player>(
  (ref) => PlayerRepositoryImpl(
    Player.human(
      pieces: getInitialPieces(),
      capturedPieces: [],
    ),
  ),
);

final aiPlayerRepositoryProvider =
    StateNotifierProvider<PlayerRepositoryImpl, Player>(
  (ref) => PlayerRepositoryImpl(
    Player.ai(
      pieces: getInitialPieces(isSenko: false),
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
  void movePiece({
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
  }
}
