import '../../Models/Whisky.dart';

abstract class IWhiskyRepository{
  List<Whisky> getWhiskies(bool onlyAlc);
}