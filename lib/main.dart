import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/ui/game_page.dart';

void main() {
  runApp(
    ProviderScope(
      child: const ShogiApp(),
    ),
  );
}

class ShogiApp extends StatelessWidget {
  const ShogiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shogi',
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(),
      ),
      home: const GamePage(),
    );
  }
}
