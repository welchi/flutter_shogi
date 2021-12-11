import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/command/command.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/presentation/game_view_model.dart';

class GamePage extends ConsumerWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Flutter Shogi'),
      // ),
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
    final piece = tile.piece?.piece;
    return Material(
      color: Colors.yellow[300],
      child: InkWell(
        onTap: piece != null
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

class TileText extends StatelessWidget {
  const TileText({
    Key? key,
    required this.tile,
  }) : super(key: key);
  final HighlightableBoardTile tile;
  @override
  Widget build(BuildContext context) {
    final piece = tile.piece?.piece;
    // 駒を配置していないマスは何も表示しない
    if (piece == null) {
      return const SizedBox();
    }
    final isAi = tile.piece?.owner == PlayerType.ai;

    return isAi
        ? Transform.rotate(
            angle: pi,
            child: Text(
              tile.piece?.piece.name ?? 'Null',
              // style: Theme.of(context).textTheme.bodyText2?.copyWith(
              //       fontWeight: FontWeight.bold,
              //     ),
            ),
          )
        : Text(
            tile.piece?.piece.name ?? 'Null',
            // style: Theme.of(context).textTheme.bodyText2?.copyWith(
            //       fontWeight: FontWeight.bold,
            //     ),
          );
  }
}
