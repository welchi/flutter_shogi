import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/domain/repository/board_repository.dart';
import 'package:flutter_shogi/domain/repository/player_repository.dart';

class SelectPiece {
  SelectPiece(this._read);

  final Reader _read;
  late final BoardRepository boardRepository;
  late final PlayerRepository humanPlayerRepository;
  late final PlayerRepository aiPlayerRepository;

  void call({
    required Piece piece,
  }) {
    final humanPieces = humanPlayerRepository.getPieces();
    final aiPieces = aiPlayerRepository.getPieces();

    // 駒が動けるエリアを捜査
    final movableTiles = getMovableTiles(piece, [...humanPieces, ...aiPieces]);
    // 移動可能な駒をハイライト
  }
}

List<Tile> getMovableTiles(
  Piece piece,
  List<Piece> pieces,
) {
  final movableDirections = piece.movableDirections;
}
