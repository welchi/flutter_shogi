import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/entity.dart';
import 'package:flutter_shogi/ui/game_view_model.dart';

class GamePage extends ConsumerWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
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
    // print(tiles);
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

class TileView extends StatelessWidget {
  const TileView({
    Key? key,
    required this.tile,
  }) : super(key: key);
  final BoardTile tile;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.yellow,
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
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
  final BoardTile tile;
  @override
  Widget build(BuildContext context) {
    final piece = tile.piece?.piece;
    // 駒を配置していないマスは何も表示しない
    if (piece == null) {
      return const SizedBox();
    }
    final isAi = tile.piece?.owner == PlayerType.ai;

    return Material(
      color: Colors.yellow,
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Center(
            child: isAi
                ? Transform.rotate(
                    angle: pi,
                    child: Text(
                      tile.piece?.piece.name ?? 'Null',
                    ),
                  )
                : Text(
                    tile.piece?.piece.name ?? 'Null',
                  ),
          ),
        ),
      ),
    );
  }
}
