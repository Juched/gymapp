import 'package:hive/hive.dart';

part 'exercise.g.dart';

@HiveType(typeId: 3)
class Exercise {
  Exercise(this.type, this.sets, this.reps, this.weight);
  @HiveField(0)
  String type;

  @HiveField(1)
  int sets;

  @HiveField(2)
  int reps;

  @HiveField(3)
  double weight;
}
