import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/game/shogi_game.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';

final senteRepositoryProvider = StateNotifierProvider(
  (ref) => PlayerRepositoryImpl(
    Player.human(
      pieces: getInitialPieces(),
      capturedPieces: [],
    ),
  ),
);

final goteRepositoryProvider = StateNotifierProvider(
  (ref) => PlayerRepositoryImpl(
    Player.ai(
      pieces: getInitialPieces(isSenko: false),
      capturedPieces: [],
    ),
  ),
);

class PlayerRepositoryImpl extends StateNotifier<Player>
    implements IPlayerRepository {
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
}
