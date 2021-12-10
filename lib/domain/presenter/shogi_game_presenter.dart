import 'package:flutter_shogi/domain/entity/entity.dart';

abstract class ShogiGamePresenter {
  /// 駒を初期化
  void initialize(List<Piece> pieces);
}
