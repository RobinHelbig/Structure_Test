import 'package:structure_test/Models/Whisky.dart';

abstract class IWhiskyService{
  List<String> getCategories();
  List<String> getDistilleries();
  List<String> getBottlers();
  List<String> getAges();
  List<String> getVolumes();
  List<Whisky> getWhiskies();
}