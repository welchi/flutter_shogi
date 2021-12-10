import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/entity/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_view_model.freezed.dart';

@freezed
class GameViewModel with _$GameViewModel {
  const factory GameViewModel({
    required Player me,
    required Player cpu,
  }) = _GameViewModel;
}

@freezed
class PieceWithOwner with _$PieceWithOwner {
  const factory PieceWithOwner({
    required PlayerType owner,
    required Piece piece,
  }) = _PieceWithOwner;
}
