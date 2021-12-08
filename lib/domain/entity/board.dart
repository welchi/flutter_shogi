import 'package:freezed_annotation/freezed_annotation.dart';

part 'board.freezed.dart';

@freezed
class Board with _$Board {
  const factory Board({
    required List<List<Cell>> cells,
  }) = _Board;
}

@freezed
class Cell with _$Cell {
  const factory Cell() = _Cell;
}
