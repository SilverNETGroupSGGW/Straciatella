import 'package:freezed_annotation/freezed_annotation.dart';

part 'day.freezed.dart';

@freezed
class Day with _$Day {
  factory Day({
    required int day,
    required int month,
    required int year,
  }) = _Day;
  Day._();
  factory Day.today() {
    final now = DateTime.now();
    return Day(
      day: now.day,
      month: now.month,
      year: now.year,
    );
  }

  bool isAfter(Day d) {
    if (year > d.year) return true;
    if (year == d.year && month > d.month) return true;
    if (year == d.year && month == d.month && day > d.day) return true;
    return false;
  }

  bool isBefore(Day day) {
    if (this != day && !isAfter(day)) return true;
    return false;
  }
}

extension DayExt on DateTime {
  Day toDay() {
    return Day(
      day: day,
      month: month,
      year: year,
    );
  }
}

/// Caclulates new timespan that contains both d1 and d2
(Day, Day)? mergeTimespans((Day, Day)? d1, (Day, Day)? d2) {
  if (d1 == null) {
    return d2;
  } else if (d2 == null) {
    return d1;
  }

  (Day, Day) result = d1;

  if (d2.$1.isBefore(result.$1)) result = (d2.$1, result.$2);
  if (d2.$2.isAfter(result.$2)) result = (result.$1, d2.$2);
  return result;
}
