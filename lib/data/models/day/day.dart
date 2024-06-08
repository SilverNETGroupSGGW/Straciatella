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
