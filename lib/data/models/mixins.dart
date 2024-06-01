import 'package:icalendar_parser/icalendar_parser.dart';
import 'package:rrule/rrule.dart';
import 'package:silvertimetable/data/models/lesson/lesson.dart';
import 'package:silvertimetable/data/models/lesson_data/lesson_data.dart';
import 'package:silvertimetable/data/models/lesson_def/lesson_def.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';

typedef DayKey = (int day, int month, int year);

mixin ICalendarable {
  ICalendar? _calendarCache;
  String get ice;

  ICalendar get calendar {
    _calendarCache ??= ICalendar.fromString(ice);
    return _calendarCache!;
  }
}

mixin WithLessonsData {
  final Map<DayKey, List<LessonData>> _lessonsData = {};
  List<StudyProgramExt> get studyPrograms;

  List<LessonData> getLessonsDataForDay(DayKey dayKey) {
    if (_lessonsData.containsKey(dayKey)) {
      return _lessonsData[dayKey]!;
    }

    _lessonsData[dayKey] = [];

    for (final studyProgram in studyPrograms) {
      for (final semester in studyProgram.semesters) {
        for (final subject in semester.subjects) {
          _lessonsData[dayKey]!.addAll(
            subject.getLessonsForDay(dayKey).map(
                  (l) => LessonData(
                    studyProgram: studyProgram,
                    studySemester: semester,
                    subject: subject,
                    lesson: l,
                  ),
                ),
          );
        }
      }
    }
    _lessonsData[dayKey]!
        .sort((a, b) => a.lesson.startTime.compareTo(b.lesson.startTime));
    return _lessonsData[dayKey]!;
  }
}

mixin ParseLessons {
  final Map<DayKey, List<Lesson>> _lessonsCache = {};

  List<LessonDef> get lessons;

  List<Lesson> getLessonsForDay(DayKey key) {
    if (_lessonsCache.containsKey(key)) {
      return _lessonsCache[key]!;
    }

    _lessonsCache[key] = [];
    for (final lesson in lessons) {
      final events = lesson.calendar.data.where((e) => e["type"] == 'VEVENT');
      for (final event in events) {
        final startTime = DateTime.parse(event['DTSTART'] as String);
        final endTime = DateTime.parse(event['DTEND'] as String);
        final duration = endTime.difference(startTime);

        final eventDay = (startTime.day, startTime.month, startTime.year);

        // Checking if the event starts on the specified date
        if (key == eventDay) {
          _lessonsCache[key]!.add(
            Lesson(
              startTime: startTime,
              duration: duration,
              classroom: lesson.classroom,
            ),
          );
        }

        // For recurring events, check occurrences on the specified date
        if (event.containsKey('RRULE')) {
          final rrule = event['RRULE'] as String;
          final occurrences = getOccurrences(rrule, startTime);

          for (final occurrence in occurrences) {
            final occurrenceDay =
                (occurrence.day, occurrence.month, occurrence.year);
            if (occurrenceDay == key) {
              _lessonsCache[key]!.add(
                Lesson(
                  startTime: occurrence,
                  duration: duration,
                  classroom: lesson.classroom,
                ),
              );
            }
          }
        }
      }
    }
    _lessonsCache[key]!.sort((a, b) => a.startTime.compareTo(b.startTime));
    return _lessonsCache[key]!;
  }
}

List<DateTime> getOccurrences(
  String rruleString,
  DateTime startDate,
) {
  final rrule = RecurrenceRule.fromString(rruleString);
  final occurrences = rrule.getInstances(
    start: startDate,
  );
  return occurrences.toList();
}
