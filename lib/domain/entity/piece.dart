import 'package:freezed_annotation/freezed_annotation.dart';

part 'piece.freezed.dart';

@freezed
class Piece with _$Piece {
  const factory Piece({
    required String name,
  }) = _Piece;
}
