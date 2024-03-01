import 'package:flutter/material.dart';

class ScheduleEventTheme extends ThemeExtension<ScheduleEventTheme> {
  ScheduleEventTheme({
    this.lectureColor = const Color(0xFFF3A833),
    this.seminarColor = Colors.indigo,
    this.laboratoryColor = const Color(0xFF008B8B),
    this.practiceColor = const Color(0xFF3388DE),
    this.facultyColor = const Color(0xFFAC2847),
  });

  final Color lectureColor;
  final Color seminarColor;
  final Color laboratoryColor;
  final Color practiceColor;
  final Color facultyColor;

  Color getColor(String type) => switch (type) {
        "lecture" => lectureColor,
        "seminar" => seminarColor,
        "laboratory" => laboratoryColor,
        "practice" => practiceColor,
        "faculty" => facultyColor,
        _ => Color(type.hashCode | 0xFF000000),
      };

  @override
  ScheduleEventTheme copyWith({
    Color? lectureColor,
    Color? seminarColor,
    Color? laboratoryColor,
    Color? practiceColor,
    Color? facultyColor,
  }) {
    return ScheduleEventTheme(
      lectureColor: lectureColor ?? this.lectureColor,
      seminarColor: seminarColor ?? this.seminarColor,
      laboratoryColor: laboratoryColor ?? this.laboratoryColor,
      practiceColor: practiceColor ?? this.practiceColor,
      facultyColor: facultyColor ?? this.facultyColor,
    );
  }

  @override
  ThemeExtension<ScheduleEventTheme> lerp(
    covariant ThemeExtension<ScheduleEventTheme>? other,
    double t,
  ) {
    if (other is! ScheduleEventTheme) {
      return this;
    }
    // default values for theme
    final def = ScheduleEventTheme();

    return ScheduleEventTheme(
      lectureColor: Color.lerp(
            lectureColor,
            other.lectureColor,
            t,
          ) ??
          def.lectureColor,
      seminarColor: Color.lerp(
            seminarColor,
            other.seminarColor,
            t,
          ) ??
          def.seminarColor,
      laboratoryColor: Color.lerp(
            laboratoryColor,
            other.laboratoryColor,
            t,
          ) ??
          def.laboratoryColor,
      practiceColor: Color.lerp(
            practiceColor,
            other.practiceColor,
            t,
          ) ??
          def.practiceColor,
      facultyColor: Color.lerp(
            facultyColor,
            other.facultyColor,
            t,
          ) ??
          def.facultyColor,
    );
  }
}
