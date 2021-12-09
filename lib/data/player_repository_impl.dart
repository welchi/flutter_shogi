import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';

final senteRepositoryProvider = StateNotifierProvider(
  (ref) => PlayerRepositoryImpl(
    const Player.human(
      pieces: [],
      capturedPieces: [],
    ),
  ),
);

final goteRepositoryProvider = StateNotifierProvider(
  (ref) => PlayerRepositoryImpl(
    const Player.ai(
      pieces: [],
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
}
