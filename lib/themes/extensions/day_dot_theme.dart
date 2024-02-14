import 'dart:ui';
import 'package:flutter/material.dart';

class DayDotTheme extends ThemeExtension<DayDotTheme> {
  DayDotTheme({
    this.normalDayColor = Colors.black,
    this.saturdayColor = Colors.black54,
    this.sundayColor = Colors.red,
    this.todayIndicatorColor = Colors.red,
    this.onDotNormalDayTextColor = Colors.white,
    this.onDotSaturdayTextColor = Colors.white,
    this.onDotSundayTextColor = Colors.white,
    this.noEventsOpacity = 0.2,
  });

  DayDotTheme.create({
    this.normalDayColor = Colors.black,
    this.saturdayColor = Colors.black54,
    this.sundayColor = Colors.red,
    this.todayIndicatorColor = Colors.red,
    this.noEventsOpacity = 0.2,
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

  /// Color of the text for today
  final Color todayIndicatorColor;

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

  double getOpacity(bool hasEvents) => hasEvents ? 1 : noEventsOpacity;

  @override
  DayDotTheme copyWith({
    Color? normalDayColor,
    Color? saturdayColor,
    Color? sundayColor,
    Color? todayIndicatorColor,
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
      todayIndicatorColor: todayIndicatorColor ?? this.todayIndicatorColor,
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
      todayIndicatorColor: Color.lerp(
            todayIndicatorColor,
            other.todayIndicatorColor,
            t,
          ) ??
          def.todayIndicatorColor,
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
    );
  }
}
