import 'package:hive/hive.dart';

part 'userGlobals.g.dart';

@HiveType(typeId: 1)
class UserGlobals {
  UserGlobals(this.totalLifted, this.currentWeight);
  @HiveField(0)
  double totalLifted;

  @HiveField(1)
  double currentWeight;
}
