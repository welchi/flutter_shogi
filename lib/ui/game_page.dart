import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/domain/command/command.dart';
import 'package:flutter_shogi/domain/command/drop_piece.dart';
import 'package:flutter_shogi/domain/command/select_captured_piece.dart';
import 'package:flutter_shogi/entity/model/model.dart';
import 'package:flutter_shogi/ui/game_view_model.dart';

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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          // 誰のターンか表示
          Padding(
            padding: EdgeInsets.all(8),
            child: TurnOwnerDisplayArea(),
          ),
          // 相手の持ち駒
          SizedBox(
            height: 64,
            child: RivalCapturedPiecesView(),
          ),
          BoardView(),
          // 自分の持ち駒
          SizedBox(
            height: 64,
            child: PlayerCapturedPiecesView(),
          ),
        ],
      ),
    );
  }
}

class TurnOwnerDisplayArea extends ConsumerWidget {
  const TurnOwnerDisplayArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerId = ref.watch(playerIdProvider);
    final turnOwnerId = ref.watch(turnOwnerProvider);
    if (playerId == turnOwnerId) {
      return Text(
        'あなたの番です',
        style: Theme.of(context).textTheme.headline5,
      );
    }
    return Text(
      '相手の番です',
      style: Theme.of(context).textTheme.headline5,
    );
  }
}

class PlayerCapturedPiecesView extends ConsumerWidget {
  const PlayerCapturedPiecesView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pieces = ref.watch(playerCapturedPiecesProvider);
    return CapturedPiecesView(
      capturedPieces: pieces,
    );
  }
}

class RivalCapturedPiecesView extends ConsumerWidget {
  const RivalCapturedPiecesView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pieces = ref.watch(rivalCapturedPiecesProvider);
    return CapturedPiecesView(
      capturedPieces: pieces,
    );
  }
}

class CapturedPiecesView extends ConsumerWidget {
  const CapturedPiecesView({
    Key? key,
    required this.capturedPieces,
  }) : super(key: key);
  final List<Piece> capturedPieces;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final turnOwnerId = ref.watch(turnOwnerProvider);
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 9,
      children: capturedPieces
          .map(
            (piece) => Material(
              child: InkWell(
                onTap: turnOwnerId == piece.ownerId
                    ? () {
                        ref.read(selectCapturedPieceProvider).call(
                              piece: piece,
                            );
                      }
                    : null,
                child: Center(
                  child: TileText(
                    piece: piece,
                  ),
                ),
              ),
            ),
          )
          .toList(),
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
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
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

  VoidCallback? _onTapAction(
    Reader read,
    Piece? piece,
    bool isHighlight,
  ) {
    // 駒がこのマスへ移動できる時
    if (isHighlight) {
      return () {
        final selectedPiece = read(selectedPieceProvider);
        final selectedAction = read(selectedActionProvider);
        if (selectedAction == MoveOrDrop.move) {
          read(movePieceProvider).call(
            piece: selectedPiece!,
            dest: tile.position,
          );
          return;
        }
        read(dropPieceProvider).call(
          piece: selectedPiece!,
          dest: tile.position,
        );
      };
    }
    final turnOwner = read(turnOwnerProvider);
    // マスに駒が存在する場合 & 今がその駒の持ち主のターン
    if (piece != null && piece.ownerId == turnOwner) {
      return () {
        read(selectPieceProvider).call(
          piece: piece,
        );
      };
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final piece = tile.piece;
    final isHighlight = tile.isMovable;
    return Material(
      color: isHighlight ? Colors.blue[200] : Colors.yellow[300],
      child: InkWell(
        onTap: _onTapAction(
          ref.read,
          piece,
          isHighlight,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.3,
            ),
          ),
          child: Center(
            child: TileText(
              piece: tile.piece,
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
    required this.piece,
  }) : super(key: key);
  final Piece? piece;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final piece = tile.piece;
    // 駒を配置していないマスは何も表示しない
    if (piece == null) {
      return const SizedBox();
    }
    final rivalId = ref.watch(rivalIdProvider);

    final isRival = piece!.ownerId == rivalId;
    final isPromoted = piece!.isPromoted();
    return isRival
        ? Transform.rotate(
            angle: pi,
            child: Text(
              piece?.name ?? 'Null',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: isPromoted ? Colors.red : null,
                  ),
            ),
          )
        : Text(
            piece?.name ?? 'Null',
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: isPromoted ? Colors.red : null,
                ),
          );
  }
}
