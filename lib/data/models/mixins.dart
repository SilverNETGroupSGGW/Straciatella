import 'dart:collection';

import 'package:icalendar_parser/icalendar_parser.dart';
import 'package:rrule/rrule.dart';
import 'package:silvertimetable/data/models/day/day.dart';
import 'package:silvertimetable/data/models/lesson/lesson.dart';
import 'package:silvertimetable/data/models/lesson_data/lesson_data.dart';
import 'package:silvertimetable/data/models/lesson_def/lesson_def.dart';
import 'package:silvertimetable/data/models/schedule_filters.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';

mixin ParseICalendar {
  ICalendar? _calendarCache;
  String get ice;

  ICalendar get calendar {
    _calendarCache ??= ICalendar.fromString(ice);
    return _calendarCache!;
  }
}

/// Collects all lessons from all StudyPrograms and adds them to the _lessonsData map.
/// The lessons can be acceses via getLessonsDataForDay(day) method.
///
/// _lessonsData is sorted
mixin CollectLessonData {
  final Map<Day, List<LessonData>> _lessonsData = {};
  final HashSet<Day> _sortedDays = HashSet();
  bool _didCollect = false;
  (Day, Day)? _timeSpan;
  List<StudyProgramExt> get studyPrograms;
  ScheduleFiltersInfo filters() => ScheduleFiltersInfo(this);

  (Day, Day)? getTimeSpan() {
    collectLessonsData();
    return _timeSpan;
  }

  void collectLessonsData() {
    if (_didCollect) return;
    _didCollect = true;
    _lessonsData.clear();

    for (final studyProgram in studyPrograms) {
      for (final semester in studyProgram.semesters) {
        for (final subject in semester.subjects) {
          subject.parseLessons();
          for (final dayEntry in subject.lessonsCache.entries) {
            final mappedLessons = dayEntry.value.map(
              (l) => LessonData(
                studyProgram: studyProgram,
                studySemester: semester,
                subject: subject,
                lesson: l,
              ),
            );

            _lessonsData.update(
              dayEntry.key,
              (v) => v..addAll(mappedLessons),
              ifAbsent: () => mappedLessons.toList(),
            );
          }
          _timeSpan = mergeTimespans(_timeSpan, subject.getTimeSpan());
        }
      }
    }
  }

  LessonData getAnyLesson() {
    collectLessonsData();

    return _lessonsData.values.first.first;
  }

  List<LessonData> getLessonsDataForDay(Day day) {
    collectLessonsData();

    if (_lessonsData.containsKey(day) && !_sortedDays.contains(day)) {
      _lessonsData[day]!.sort(
        (a, b) => a.lesson.startTime.compareTo(b.lesson.startTime),
      );

      _sortedDays.add(day);
    }

    return _lessonsData[day] ?? [];
  }
}

/// Creates all found lessons with iCalendar data and adds them as Lesson objects to the lessonsCache map.
///
/// lessonsCache is not sorted
mixin CreateLessons {
  final Map<Day, List<Lesson>> lessonsCache = {};
  bool _didParse = false;
  (Day, Day)? _timeSpan;

  List<LessonDef> get lessons;

  (Day, Day)? getTimeSpan() {
    if (!_didParse) {
      parseLessons();
    }
    return _timeSpan;
  }

  void parseLessons() {
    if (_didParse || lessons.isEmpty) {
      _didParse = true;
      return;
    }

    for (final lesson in lessons) {
      final events = lesson.calendar.data.where((e) => e["type"] == 'VEVENT');
      for (final event in events) {
        final startTime =
            (event['dtstart'] as IcsDateTime).toDateTime()!.toUtc();
        final endTime = (event['dtend'] as IcsDateTime).toDateTime()!.toUtc();
        final duration = event['duration'] as Duration? ?? Duration.zero;
        final rrule = event['rrule'] as RecurrenceRule?;

        _timeSpan = mergeTimespans(
          _timeSpan,
          (startTime.toDay(), endTime.toDay()),
        );

        if (rrule != null) {
          final occurrences = rrule.getInstances(
            start: startTime,
            before: endTime,
            includeBefore: true,
            includeAfter: true,
          );

          for (final occurrence in occurrences) {
            final day = occurrence.toDay();
            lessonsCache[day] ??= [];
            lessonsCache[day]!.add(
              Lesson(
                startTime: occurrence,
                duration: duration,
                classroom: lesson.classroom,
              ),
            );
          }
        } else {
          final day = startTime.toDay();
          lessonsCache[day] ??= [];
          lessonsCache[day]!.add(
            Lesson(
              startTime: startTime,
              duration: duration,
              classroom: lesson.classroom,
            ),
          );
        }
      }
    }
    _didParse = true;
    return;
  }
}
