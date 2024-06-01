import 'package:flutter/widgets.dart';
import 'package:silvertimetable/data/models/lesson_data/lesson_data.dart';

class LessonDataProvider extends InheritedWidget {
  final LessonData event;
  const LessonDataProvider(this.event, {super.key, required super.child});

  static LessonDataProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LessonDataProvider>();
  }

  @override
  bool updateShouldNotify(LessonDataProvider oldWidget) {
    return true;
  }
}
