import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/command/command.dart';
import 'package:flutter_shogi/presentation/game_view_model.dart';

import 'game_presenter.dart';

class GamePage extends ConsumerWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Shogi'),
      ),
      body: Column(
        children: const [
          // 相手の持ち駒
          Flexible(
            child: BoardView(),
          ),
          // 自分の持ち駒
        ],
      ),
    );
  }
}

class BoardView extends ConsumerWidget {
  const BoardView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tiles = ref.watch(flattenTilesProvider);
    return GridView.count(
      crossAxisCount: 9,
      children: tiles
          .map(
            (tile) => TileView(
              tile: tile,
            ),
          )
          .toList(),
    );
  }
}

class TileView extends ConsumerWidget {
  const TileView({
    Key? key,
    required this.tile,
  }) : super(key: key);
  final HighlightableBoardTile tile;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final piece = tile.piece;
    final isHighlight = tile.isMovable;
    return Material(
      color: isHighlight ? Colors.red[300] : Colors.yellow[300],
      child: InkWell(
        onTap: isHighlight
            ? () {
                final selectedPiece = ref.read(selectedPieceProvider);
                ref.read(movePieceProvider).call(
                      piece: selectedPiece!,
                      dest: tile.position,
                    );
              }
            : piece != null
                ? () {
                    ref.read(selectPieceProvider).call(
                          piece: piece,
                        );
                  }
                : null,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.3,
            ),
          ),
          child: Center(
            child: TileText(
              tile: tile,
            ),
          ),
        ),
      ),
    );
  }
}

class TileText extends ConsumerWidget {
  const TileText({
    Key? key,
    required this.tile,
  }) : super(key: key);
  final HighlightableBoardTile tile;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final piece = tile.piece;
    // 駒を配置していないマスは何も表示しない
    if (piece == null) {
      return const SizedBox();
    }
    final rivalId = ref.watch(rivalIdProvider);

    final isRival = tile.piece?.ownerId == rivalId;

    return isRival
        ? Transform.rotate(
            angle: pi,
            child: Text(
              tile.piece?.name ?? 'Null',
            ),
          )
        : Text(
            tile.piece?.name ?? 'Null',
          );
  }
}
