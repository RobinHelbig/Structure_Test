import 'package:structure_test/Data/Repositories/IWhiskyRepository.dart';
import 'package:structure_test/Data/Repositories/WhiskyRepositoryMock.dart';
import 'package:structure_test/Data/Repositories/WhiskyRepositoryObjectBox.dart';
import 'package:structure_test/Services/IWhiskyService.dart';
import 'package:structure_test/Services/WhiskyService.dart';

class Dependencies{
  static final IWhiskyRepository whiskyRepository = WhiskyRepositoryObjectBox();
  static final IWhiskyService whiskyService = WhiskyService();
}