import 'package:structure_test/Models/GoodsMovement.dart';

abstract class IGoodsMovementRepository{
  List<GoodsMovement> getGoodsMovements();
  GoodsMovement addGoodsMovement(GoodsMovement goodsMovement);
  GoodsMovement updateGoodsMovement(GoodsMovement goodsMovement);
  bool deleteGoodsMovement(GoodsMovement goodsMovement);
}