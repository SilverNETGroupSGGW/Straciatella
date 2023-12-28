import 'package:hive/hive.dart';
import 'package:silvertimetable/data/adapters/color_adapter.dart';
import 'package:silvertimetable/data/adapters/theme_mode_adapter.dart';
import 'package:silvertimetable/data/adapters/theme_type_adapter.dart';
import 'package:silvertimetable/data/models/classroom/classroom.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';

registerDataAdapters() {
  Hive.registerAdapter(ColorAdapter());
  Hive.registerAdapter(ThemeModeAdapter());
  Hive.registerAdapter(ThemeTypeAdapter());
  Hive.registerAdapter(ClassroomAdapter());
  Hive.registerAdapter(LecturerAdapter());
  Hive.registerAdapter(LecturerBaseAdapter());
  Hive.registerAdapter(ScheduleAdapter());
  Hive.registerAdapter(ScheduleBaseAdapter());
  Hive.registerAdapter(SubjectAdapter());
  Hive.registerAdapter(SubjectLessonAdapter());
  Hive.registerAdapter(SubjectGroupAdapter());
}