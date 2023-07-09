import 'package:structure_test/Models/Variant.dart';
import 'package:structure_test/Models/Whisky.dart';

import '../Models/FilterOptions.dart';

abstract class IWhiskyRepository{
  List<Whisky> getWhiskies(FilterOptions filterOptions);
  Whisky updateWhisky(Whisky whisky);
  bool deleteWhisky(Whisky whisky);
}