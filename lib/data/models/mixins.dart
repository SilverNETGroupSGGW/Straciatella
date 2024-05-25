import 'package:icalendar_parser/icalendar_parser.dart';
import 'package:rrule/rrule.dart';
import 'package:silvertimetable/data/models/lesson/lesson.dart';
import 'package:silvertimetable/data/models/lesson_def/lesson_def.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';

mixin ICalendarable {
  ICalendar? _calendarCache;
  String get ice;

  ICalendar get calendar {
    _calendarCache ??= ICalendar.fromString(ice);
    return _calendarCache!;
  }
}

mixin ScheduleEventable {
  final Map<(int day, int month, int year), List<Lesson>> _lessonsCache = {};

  List<Subject> get scheduleSubjects;
  String get title;

  List<Lesson> getLessonsForDate(int day, int month, int year) {
    final key = (day, month, year);

    if (_lessonsCache.containsKey(key)) {
      return _lessonsCache[key]!;
    }

    _lessonsCache[key] = [];
    for (final subject in scheduleSubjects) {
      for (final lesson in subject.lessons ?? <LessonDef>[]) {
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
                def: lesson,
                subject: subject,
                startTime: startTime,
                duration: duration,
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
                    def: lesson,
                    subject: subject,
                    startTime: occurrence,
                    duration: duration,
                  ),
                );
              }
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
