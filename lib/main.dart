import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/route.dart';
import 'package:flutter_shogi/ui/game_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: ShogiApp(),
    ),
  );
}

class ShogiApp extends ConsumerWidget {
  const ShogiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Shogi',
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(),
      ),
      navigatorKey: ref.read(
        navigatorKeyProvider,
      ),
      home: const GamePage(),
    );
  }
}
