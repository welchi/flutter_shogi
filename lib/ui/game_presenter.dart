import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi/state/player_repository_impl.dart';

final gameViewModelProvider = Provider(
  (ref) {},
);

final boardProvider = Provider(
  (ref) {
    final senteState = ref.watch(humanPlayerRepositoryProvider);
  },
);
