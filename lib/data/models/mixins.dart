import 'package:icalendar_parser/icalendar_parser.dart';
import 'package:rrule/rrule.dart';
import 'package:silvertimetable/data/models/day/day.dart';
import 'package:silvertimetable/data/models/lesson/lesson.dart';
import 'package:silvertimetable/data/models/lesson_data/lesson_data.dart';
import 'package:silvertimetable/data/models/lesson_def/lesson_def.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';

mixin ICalendarable {
  ICalendar? _calendarCache;
  String get ice;

  ICalendar get calendar {
    _calendarCache ??= ICalendar.fromString(ice);
    return _calendarCache!;
  }
}

mixin WithLessonsData {
  final Map<Day, List<LessonData>> _lessonsData = {};
  bool _didGetTimeSpan = false;
  (Day, Day)? _timeSpan;
  List<StudyProgramExt> get studyPrograms;

  (Day, Day)? getTimeSpan() {
    if (!_didGetTimeSpan) {
      final today = DateTime.now();
      getLessonsDataForDay(
        Day(
          day: today.day,
          month: today.month,
          year: today.year,
        ),
      );
    }
    return _timeSpan;
  }

  List<LessonData> getLessonsDataForDay(Day day) {
    if (_lessonsData.containsKey(day)) {
      return _lessonsData[day]!;
    }

    Day? start;
    Day? end;

    _lessonsData[day] = [];

    for (final studyProgram in studyPrograms) {
      for (final semester in studyProgram.semesters) {
        for (final subject in semester.subjects) {
          _lessonsData[day]!.addAll(
            subject.getLessonsForDay(day).map(
                  (l) => LessonData(
                    studyProgram: studyProgram,
                    studySemester: semester,
                    subject: subject,
                    lesson: l,
                  ),
                ),
          );
          final timeSpan = subject.getTimeSpan();
          if (timeSpan != null) {
            start ??= timeSpan.$1;
            end ??= timeSpan.$2;
            if (start.isAfter(timeSpan.$1)) start = timeSpan.$1;
            if (end.isBefore(timeSpan.$2)) end = timeSpan.$2;
          }
        }
      }
    }
    _lessonsData[day]!
        .sort((a, b) => a.lesson.startTime.compareTo(b.lesson.startTime));
    if (start != null && end != null) {
      _timeSpan = (start, end);
    }
    _didGetTimeSpan = true;
    return _lessonsData[day]!;
  }
}

mixin ParseLessons {
  final Map<Day, List<Lesson>> _lessonsCache = {};
  bool _didParseTimeSpan = false;
  (Day, Day)? _timeSpan;

  List<LessonDef> get lessons;

  (Day, Day)? getTimeSpan() {
    if (!_didParseTimeSpan) {
      final today = DateTime.now();
      getLessonsForDay(
        Day(
          day: today.day,
          month: today.month,
          year: today.year,
        ),
      );
    }
    return _timeSpan;
  }

  List<Lesson> getLessonsForDay(Day key) {
    if (_lessonsCache.containsKey(key)) {
      return _lessonsCache[key]!;
    }

    Day? start;
    Day? end;

    _lessonsCache[key] = [];
    for (final lesson in lessons) {
      final events = lesson.calendar.data.where((e) => e["type"] == 'VEVENT');
      for (final event in events) {
        final startTime = DateTime.parse(event['DTSTART'] as String);
        final endTime = DateTime.parse(event['DTEND'] as String);
        final duration = endTime.difference(startTime);

        final eventDay = Day(
          day: startTime.day,
          month: startTime.month,
          year: startTime.year,
        );

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
        start ??= eventDay;
        end ??= eventDay;
        if (start.isAfter(eventDay)) start = eventDay;
        if (end.isBefore(eventDay)) end = eventDay;

        // For recurring events, check occurrences on the specified date
        if (event.containsKey('RRULE')) {
          final rrule = event['RRULE'] as String;
          final occurrences = getOccurrences(rrule, startTime);

          for (final occurrence in occurrences) {
            final occurrenceDay = Day(
              day: occurrence.day,
              month: occurrence.month,
              year: occurrence.year,
            );
            if (occurrenceDay == key) {
              _lessonsCache[key]!.add(
                Lesson(
                  startTime: occurrence,
                  duration: duration,
                  classroom: lesson.classroom,
                ),
              );
            }
            start ??= occurrenceDay;
            end ??= occurrenceDay;
            if (start.isAfter(occurrenceDay)) start = occurrenceDay;
            if (end.isBefore(occurrenceDay)) end = occurrenceDay;
          }
        }
      }
    }
    _lessonsCache[key]!.sort((a, b) => a.startTime.compareTo(b.startTime));
    if (start == null && end == null) {
      _timeSpan = (start!, end!);
    }
    _didParseTimeSpan = true;
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
