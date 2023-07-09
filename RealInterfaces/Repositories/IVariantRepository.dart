import 'package:structure_test/Models/Variant.dart';

abstract class IVariantRepository{
  Variant getVariant(String barcode);
  Variant addVariant(Variant variant);
  Variant updateVariant(Variant variant);
  bool deleteVariant(Variant variant);
}
