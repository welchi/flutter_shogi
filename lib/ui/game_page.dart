import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    return GridView.count(
      crossAxisCount: 9,
      children: tiles
          .map(
            (tile) => Material(
              color: Colors.yellow,
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Center(
                    child: tile.piece != null
                        ? Transform.rotate(
                            angle: pi,
                            child: Text(tile.piece?.piece.name ?? 'Null'),
                          )
                        : const SizedBox(),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
