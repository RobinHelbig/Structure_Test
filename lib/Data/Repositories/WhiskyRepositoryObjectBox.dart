import 'package:structure_test/Data/Repositories/IWhiskyRepository.dart';
import 'package:structure_test/Models/Whisky.dart';

import '../../main.dart';
import '../ObjectBox/objectbox.g.dart';

class WhiskyRepositoryObjectBox implements IWhiskyRepository{
  final whiskyBox = objectbox.whiskyBox;

  @override
  List<Whisky> getWhiskies(bool onlyAlc) {
    if(onlyAlc){
      final query = (whiskyBox.query(Whisky_.alcPercent > 0)).build();
      final results = query.find();
      query.close();
      return results;
    }

    return whiskyBox.getAll();
  }
}