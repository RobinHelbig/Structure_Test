import 'package:structure_test/Models/Variant.dart';
import 'package:structure_test/Models/Whisky.dart';

import '../Models/FilterOptions.dart';

abstract class IWhiskyService{
  List<String> getCategories();
  List<String> getDistilleries();
  List<String> getBottlers();
  List<String> getAges();
  List<String> getVolumes();

  List<Whisky> getWhiskies(FilterOptions filterOptions);
  Whisky updateWhisky(Whisky whisky);
  bool deleteWhisky(Whisky whisky);

  Variant getVariant(String barcode);
  Variant addVariant(Variant variant);
  Variant updateVariant(Variant variant);
  bool deleteVariant(Variant variant);
}