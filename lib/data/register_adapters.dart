import 'package:hive/hive.dart';
import 'package:silvertimetable/data/adapters/color_adapter.dart';
import 'package:silvertimetable/data/adapters/day_of_week_adapter.dart';
import 'package:silvertimetable/data/adapters/duration_adapter.dart';
import 'package:silvertimetable/data/adapters/schedule_key_adapter.dart';
import 'package:silvertimetable/data/adapters/theme_mode_adapter.dart';
import 'package:silvertimetable/data/adapters/theme_type_adapter.dart';
import 'package:silvertimetable/data/models/classroom/classroom.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lesson_def/lesson_def.dart';
import 'package:silvertimetable/data/models/organization/organization.dart';
import 'package:silvertimetable/data/models/student_group/student_group.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/models/study_semester/study_semester.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';
import 'package:silvertimetable/data/models/tenant/tenant.dart';

void registerDataAdapters() {
  Hive.registerAdapter(ColorAdapter());
  Hive.registerAdapter(ThemeModeAdapter());
  Hive.registerAdapter(ThemeTypeAdapter());
  Hive.registerAdapter(DayOfWeekAdapter());
  Hive.registerAdapter(DurationAdapter());
  Hive.registerAdapter(ClassroomImplAdapter());
  Hive.registerAdapter(ClassroomTypeImplAdapter());
  Hive.registerAdapter(LecturerBaseImplAdapter());
  Hive.registerAdapter(LecturerExtImplAdapter());
  Hive.registerAdapter(LessonDefImplAdapter());
  Hive.registerAdapter(OrganizationImplAdapter());
  Hive.registerAdapter(StudentGroupImplAdapter());
  Hive.registerAdapter(StudyProgramBaseImplAdapter());
  Hive.registerAdapter(StudyProgramExtImplAdapter());
  Hive.registerAdapter(StudySemesterImplAdapter());
  Hive.registerAdapter(SubjectImplAdapter());
  Hive.registerAdapter(SubjectTypeImplAdapter());
  Hive.registerAdapter(TenantImplAdapter());
  Hive.registerAdapter(ScheduleKeyAdapter());
}
