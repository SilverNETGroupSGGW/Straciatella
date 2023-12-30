import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/data/models/enums.dart';

const List<String> _apiDaysOrder = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday",
];

class DayOfWeekConverter extends JsonConverter<DayOfWeek, String> {
  const DayOfWeekConverter();

  @override
  DayOfWeek fromJson(String json) =>
      DayOfWeek.values[_apiDaysOrder.indexOf(json)];

  @override
  String toJson(DayOfWeek dayOfWeek) => _apiDaysOrder[dayOfWeek.index];
}
