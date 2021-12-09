import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/direction.dart';
import 'package:flutter_shogi/domain/entity/piece.dart';

class MovePiece {
  const MovePiece(this._read);
  final Reader _read;
  void call({
    required Piece piece,
    required Direction movingDirection,
  }) {
    // こまの移動可能な線上に、相手のコマがあるかチェック
  }
}
