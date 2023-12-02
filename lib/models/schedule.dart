import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/data/schedules.dart';
import 'package:psggw/models/degree.dart';
import 'package:psggw/models/group.dart';
import 'package:psggw/models/lesson.dart';

class Schedule {
  String id;

  String name;
  int year;
  int semester;
  Degree degree;
  List<Group> groups;
  List<Lesson> lessons;

  Schedule({
    required this.id,
    required this.name,
    required this.year,
    required this.semester,
    required this.degree,
    required this.groups,
    required this.lessons,
  });
}

class ScheduelsNotifier extends StateNotifier<List<Schedule>> {
  ScheduelsNotifier() : super(schedules);
}

final schedulesDataProvider =
    StateNotifierProvider<ScheduelsNotifier, List<Schedule>>(
  (ref) => ScheduelsNotifier(),
);
