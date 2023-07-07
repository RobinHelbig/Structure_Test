import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import '../../Models/Whisky.dart';
import 'objectbox.g.dart'; // created by `flutter pub run build_runner build`

class ObjectBox {
  /// The Store of this app.
  late final Store store;

  late final Box<Whisky> whiskyBox;

  ObjectBox._create(this.store) {
    whiskyBox = Box<Whisky>(store);
    if(whiskyBox.isEmpty()){
      whiskyBox.putMany([
        Whisky(1, "Jack Daniels", 700, 40),
        Whisky(2, "Jim Beam", 700, 50),
        Whisky(3, "Robby-Bubble", 700, 0)
      ]);
    }
  }

  /// Create an instance of ObjectBox to use throughout the app.
  static Future<ObjectBox> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    // Future<Store> openStore() {...} is defined in the generated objectbox.g.dart
    final store = await openStore(directory: p.join(docsDir.path, "obx-example3"));
    return ObjectBox._create(store);
  }
}