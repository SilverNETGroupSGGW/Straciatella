import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:silvertimetable/helpers.dart';

class DayDotTheme extends ThemeExtension<DayDotTheme> {
  DayDotTheme({
    this.normalDayColor = Colors.black,
    this.saturdayColor = Colors.black54,
    this.sundayColor = Colors.red,
    this.onDotNormalDayTextColor = Colors.white,
    this.onDotSaturdayTextColor = Colors.white,
    this.onDotSundayTextColor = Colors.white,
    this.noEventsOpacity = 0.4,
    this.pastDayOpacity = 0.6,
  });

  DayDotTheme.create({
    this.normalDayColor = Colors.black,
    this.saturdayColor = Colors.black54,
    this.sundayColor = Colors.red,
    this.noEventsOpacity = 0.4,
    this.pastDayOpacity = 0.6,
  }) {
    onDotNormalDayTextColor =
        normalDayColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;
    onDotSaturdayTextColor =
        saturdayColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;
    onDotSundayTextColor =
        sundayColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;
  }

  /// Color of the dot for monday-friday
  final Color normalDayColor;

  /// Color of the dot for saturday
  final Color saturdayColor;

  /// Color of the dot for sunday
  final Color sundayColor;

  /// Color of the text with the dot visible for moday-friday
  late final Color onDotNormalDayTextColor;

  /// Color of the text with the dot visible for saturday
  late final Color onDotSaturdayTextColor;

  /// Color of the text with the dot visible for sunday
  late final Color onDotSundayTextColor;

  /// Opacity when day doesnt have any events this day
  late final double noEventsOpacity;

  /// Opacity if the day is in the past
  late final double pastDayOpacity;

  (Color bg, Color text) getByWeekdayColor(int weekday) => switch (weekday) {
        < 5 => (normalDayColor, onDotNormalDayTextColor),
        6 => (saturdayColor, onDotSaturdayTextColor),
        7 => (sundayColor, onDotSundayTextColor),
        _ => (normalDayColor, onDotNormalDayTextColor),
      };

  double getOpacity(bool hasEvents, DateTime date) =>
      switch ((hasEvents, date.isBefore(today()))) {
        (_, true) => noEventsOpacity,
        (false, false) => pastDayOpacity,
        (true, false) => 1,
      };

  @override
  DayDotTheme copyWith({
    Color? normalDayColor,
    Color? saturdayColor,
    Color? sundayColor,
    Color? onDotNormalDayTextColor,
    Color? onDotSaturdayTextColor,
    Color? onDotSundayTextColor,
    double? noEventsOpacity,
    double? pastDayOpacity,
  }) {
    return DayDotTheme(
      normalDayColor: normalDayColor ?? this.normalDayColor,
      saturdayColor: saturdayColor ?? this.saturdayColor,
      sundayColor: sundayColor ?? this.sundayColor,
      onDotNormalDayTextColor:
          onDotNormalDayTextColor ?? this.onDotNormalDayTextColor,
      onDotSaturdayTextColor:
          onDotSaturdayTextColor ?? this.onDotSaturdayTextColor,
      onDotSundayTextColor: onDotSundayTextColor ?? this.onDotSundayTextColor,
      noEventsOpacity: noEventsOpacity ?? this.noEventsOpacity,
      pastDayOpacity: pastDayOpacity ?? this.pastDayOpacity,
    );
  }

  @override
  ThemeExtension<DayDotTheme> lerp(
    covariant ThemeExtension<DayDotTheme>? other,
    double t,
  ) {
    if (other is! DayDotTheme) {
      return this;
    }
    // default values for theme
    final def = DayDotTheme();

    return DayDotTheme(
      normalDayColor: Color.lerp(
            normalDayColor,
            other.normalDayColor,
            t,
          ) ??
          def.normalDayColor,
      saturdayColor: Color.lerp(
            saturdayColor,
            other.saturdayColor,
            t,
          ) ??
          def.saturdayColor,
      sundayColor: Color.lerp(
            sundayColor,
            other.sundayColor,
            t,
          ) ??
          def.sundayColor,
      onDotNormalDayTextColor: Color.lerp(
            onDotNormalDayTextColor,
            other.onDotNormalDayTextColor,
            t,
          ) ??
          def.onDotNormalDayTextColor,
      onDotSaturdayTextColor: Color.lerp(
            onDotSaturdayTextColor,
            other.onDotSaturdayTextColor,
            t,
          ) ??
          def.onDotSaturdayTextColor,
      onDotSundayTextColor: Color.lerp(
            onDotSundayTextColor,
            other.onDotSundayTextColor,
            t,
          ) ??
          def.onDotSundayTextColor,
      noEventsOpacity: lerpDouble(
            noEventsOpacity,
            other.noEventsOpacity,
            t,
          ) ??
          def.noEventsOpacity,
      pastDayOpacity: lerpDouble(
            pastDayOpacity,
            other.pastDayOpacity,
            t,
          ) ??
          def.pastDayOpacity,
    );
  }
}
