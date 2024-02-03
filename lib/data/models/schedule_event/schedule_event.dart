import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/data/models/lesson/lesson.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';
import 'package:silvertimetable/helpers.dart';

part 'schedule_event.freezed.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  factory ScheduleEvent({
    required Lesson lesson,
    required Subject fromSubject,
  }) = _ScheduleEvent;
  ScheduleEvent._();

  static List<ScheduleEvent> getSortedEventsFromSubjects(
    List<Subject> subjects,
  ) {
    final result = <ScheduleEvent>[];
    for (final subject in subjects) {
      result.addAll(
        subject.lessons
            .map((l) => ScheduleEvent(lesson: l, fromSubject: subject)),
      );
    }

    result.sort((a, b) => a.lesson.startTime.compareTo(b.lesson.startTime));
    return result;
  }

  static Map<DateTime, List<ScheduleEvent>> groupByDay(
    List<ScheduleEvent> events,
  ) {
    final result = <DateTime, List<ScheduleEvent>>{};
    for (final event in events) {
      final day = event.lesson.startTime.truncateTimeOfDay();
      result.update(
        day,
        (events) => events..add(event),
        ifAbsent: () => [event],
      );
    }

    return result;
  }
}
