import 'package:isar/isar.dart';
part 'data.g.dart';
@Collection()

class Data{
  Id id=Isar.autoIncrement;
  late String text;
  late String password;
  late String lastname;
}