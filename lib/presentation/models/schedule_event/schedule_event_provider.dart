import 'package:flutter/widgets.dart';
import 'package:silvertimetable/data/models/lesson_data/lesson_data.dart';

class ScheduleEventProvider extends InheritedWidget {
  final LessonData event;
  const ScheduleEventProvider(this.event, {super.key, required super.child});

  static ScheduleEventProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ScheduleEventProvider>();
  }

  @override
  bool updateShouldNotify(ScheduleEventProvider oldWidget) {
    return true;
  }
}
