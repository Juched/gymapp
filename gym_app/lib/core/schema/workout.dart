import 'package:hive/hive.dart';
import 'package:gym_app/core/schema/exercise.dart';

part 'workout.g.dart';

@HiveType(typeId: 2)
class Workout {
  Workout(this.time, this.weightLifted, this.exercises);
  @HiveField(0)
  DateTime time;

  @HiveField(1)
  double weightLifted;

  @HiveField(2)
  List<Exercise> exercises;
}
