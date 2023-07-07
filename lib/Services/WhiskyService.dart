import 'package:structure_test/Data/Repositories/WhiskyRepositoryMock.dart';
import 'package:structure_test/Dependencies.dart';
import 'package:structure_test/Models/Whisky.dart';
import '../Data/Repositories/IWhiskyRepository.dart';
import 'IWhiskyService.dart';

class WhiskyService implements IWhiskyService{
  final IWhiskyRepository _whiskyRepository = Dependencies.whiskyRepository;

  @override
  List<Whisky> getWhiskies(bool onlyAlc) {
    return _whiskyRepository.getWhiskies(onlyAlc);
  }

  @override
  int getWhiskyCount(bool onlyAlc) {
    return _whiskyRepository.getWhiskies(onlyAlc).length;
  }
}