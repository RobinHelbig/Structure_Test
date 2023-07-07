import 'package:flutter/foundation.dart';
import 'package:structure_test/Dependencies.dart';
import 'package:structure_test/Services/IWhiskyService.dart';

import '../Models/Whisky.dart';

class WhiskyOverviewProvider extends ChangeNotifier {
  final IWhiskyService _whiskyService = Dependencies.whiskyService;
  bool _onlyAlc = false;

  List<Whisky> get whiskies => _whiskyService.getWhiskies(_onlyAlc);
  int get whiskyCount => _whiskyService.getWhiskyCount(_onlyAlc);
  bool get onlyAlc => _onlyAlc;

  void setOnlyAlc(bool onlyAlc){
    _onlyAlc = onlyAlc;
    notifyListeners();
  }
}