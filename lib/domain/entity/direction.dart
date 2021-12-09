import 'package:freezed_annotation/freezed_annotation.dart';

part 'direction.freezed.dart';

@freezed
class Direction with _$Direction {
  const factory Direction({
    @Default(0) int up,
    @Default(0) int right,
    @Default(0) int left,
    @Default(0) int down,
    @Default(0) int upRight,
    @Default(0) int upLeft,
    @Default(0) int downRight,
    @Default(0) int downLeft,
  }) = _Direction;
}
