import 'package:easy_localization/easy_localization.dart';
import 'package:silvertimetable/data/converters/ic_duration.dart';
import 'package:silvertimetable/data/models/classroom/classroom.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lesson_def/lesson_def.dart';
import 'package:silvertimetable/data/models/organization/organization.dart';
import 'package:silvertimetable/data/models/student_group/student_group.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/models/study_semester/study_semester.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';
import 'package:silvertimetable/data/models/tenant/tenant.dart';

part 'organizations.dart';
part 'tenants.dart';
part 'classroom_types.dart';
part 'classrooms.dart';
part 'subject_types.dart';
part 'student_groups.dart';
part 'lecturers_base.dart';
part 'lecturers_ext.dart';
part 'study_programs_base.dart';
part 'study_programs_ext.dart';

final _now = DateTime.now();

String genICalendarDef({
  int count = 15,
  DateTime? start,
  Duration? duration,
}) {
  assert(count > 0, "There must be at least 1 event");

  start ??= _now;
  duration ??= const Duration(hours: 1, minutes: 30);
  final startStr = DateFormat("yyyyMMddTHHmmssZ").format(start.toUtc());
  final durationStr = DurationExt.toICalendar(duration);
  final endStr = DateFormat("yyyyMMddTHHmmssZ")
      .format(start.add(Duration(days: 7 * (count - 1)) + duration).toUtc());
  return """
BEGIN:VCALENDAR
PRODID:-//xyz Corp//NONSGML PDA Calendar Version 1.0//EN
VERSION:2.0
BEGIN:VEVENT
DTSTART:$startStr
DTEND:$endStr
DURATION:$durationStr
RRULE:FREQ=WEEKLY;COUNT=$count
END:VEVENT
END:VCALENDAR
""";
}
