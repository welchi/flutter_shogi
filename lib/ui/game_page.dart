import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/board.dart';
import 'package:flutter_shogi/domain/entity/piece.dart';

class GamePage extends ConsumerWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          // 相手の持ち駒
          Flexible(
            child: GridView.count(
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
                                ? Text(tile.piece!.name)
                                : const SizedBox(),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          // 自分の持ち駒
        ],
      ),
    );
  }
}

final tiles = List.generate(
  81,
  (index) => Tile(
    piece: Piece.ou(),
  ),
);
