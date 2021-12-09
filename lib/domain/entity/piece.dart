import 'package:freezed_annotation/freezed_annotation.dart';

part 'piece.freezed.dart';

@freezed
class Piece with _$Piece {
  const factory Piece({
    required String name,
    @Default(0) int up,
    @Default(0) int right,
    @Default(0) int left,
    @Default(0) int down,
    @Default(0) int upRight,
    @Default(0) int upLeft,
    @Default(0) int downRight,
    @Default(0) int downLeft,
  }) = _Piece;
  factory Piece.ou() => const Piece(
        name: '王',
        up: 1,
        right: 1,
        left: 1,
        down: 1,
        upRight: 1,
        upLeft: 1,
        downRight: 1,
        downLeft: 1,
      );
  factory Piece.hisya() =>
      const Piece(name: '飛車', up: 99, down: 99, left: 99, right: 99);
}
