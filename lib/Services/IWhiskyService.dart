import '../../Models/Whisky.dart';

abstract class IWhiskyService{
  List<Whisky> getWhiskies(bool onlyAlc);
  int getWhiskyCount(bool onlyAlc);
}