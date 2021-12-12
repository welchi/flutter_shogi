import 'package:flutter_shogi/domain/entity/entity.dart';

/// 成れるかチェック
bool checkIsAbleToPromote({
  required Piece piece,
  required String playerId,
}) {
  final isPlayer = piece.ownerId == playerId;
  if (isPlayer) {
    return piece.position!.y >= 6;
  }
  return piece.position!.y <= 2;
}
