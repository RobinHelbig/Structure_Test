
import 'package:objectbox/objectbox.dart';

@Entity()
class Whisky{
  Whisky(this.id, this.name, this.volume, this.alcPercent);

  @Id()
  int objectBoxId = 0;

  int id;

  String name;

  int volume;

  int alcPercent;
}