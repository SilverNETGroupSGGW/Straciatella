import 'package:psggw/models/degree.dart';
import 'package:psggw/models/group.dart';
import 'package:psggw/models/lesson.dart';

class Schedule {
  String id;
  DateTime created;
  DateTime updated;
  String name;
  int year;
  int semester;
  Degree degree;
  List<Group> groups;
  List<Lesson> lessons;

  Schedule({
    required this.id,
    required this.created,
    required this.updated,
    required this.name,
    required this.year,
    required this.semester,
    required this.degree,
    required this.groups,
    required this.lessons,
  });
}
