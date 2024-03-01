import 'package:flutter/widgets.dart';
import 'package:silvertimetable/data/models/schedule_event/schedule_event.dart';

class ScheduleEventProvider extends InheritedWidget {
  final ScheduleEvent event;
  const ScheduleEventProvider(this.event, {super.key, required super.child});

  static ScheduleEventProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ScheduleEventProvider>();
  }

  @override
  bool updateShouldNotify(ScheduleEventProvider oldWidget) {
    return true;
  }
}
