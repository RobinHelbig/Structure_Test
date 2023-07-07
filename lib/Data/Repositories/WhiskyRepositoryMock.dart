import 'package:structure_test/Data/Repositories/IWhiskyRepository.dart';
import 'package:structure_test/Models/Whisky.dart';

class WhiskyRepositoryMock implements IWhiskyRepository{
  @override
  List<Whisky> getWhiskies(bool onlyAlc) {
    if(onlyAlc){
      return [
        Whisky(1, "Jack Daniels", 700, 40),
        Whisky(2, "Jim Beam", 700, 50)
      ];
    }
    return [
      Whisky(1, "Jack Daniels", 700, 40),
      Whisky(2, "Jim Beam", 700, 50),
      Whisky(3, "Robby-Bubble", 700, 0),
    ];
    throw UnimplementedError();
  }
}