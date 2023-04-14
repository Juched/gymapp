import 'package:hive/hive.dart';
import 'package:gym_app/core/schema/userGlobals.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class User {
  User(this.firstName, this.lastName, this.age, this.globals);
  @HiveField(0)
  String firstName;

  @HiveField(1)
  String lastName;

  @HiveField(2)
  int age;

  @HiveField(3)
  UserGlobals globals;
}
