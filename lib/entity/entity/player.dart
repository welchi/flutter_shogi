import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

enum PlayerType {
  human,
  ai,
}

@freezed
class Player with _$Player {
  const factory Player({
    required String id,
    required PlayerType type,
    required List<Piece> pieces, // 盤面上に置いている駒
    required List<Piece> capturedPieces, // 持ち駒
  }) = _Player;
}
