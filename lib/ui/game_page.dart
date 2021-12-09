import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/entity/board.dart';

class GamePage extends ConsumerWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          // 相手の持ち駒
          GridView.count(
            crossAxisCount: 9,
            children: tiles
                .map(
                  (tile) => const Text('a'),
                )
                .toList(),
          ),
          // 自分の持ち駒
        ],
      ),
    );
  }
}

final tiles = List.generate(
  81,
  (index) => const Tile(),
);
