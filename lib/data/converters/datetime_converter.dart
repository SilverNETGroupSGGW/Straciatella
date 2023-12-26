import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter extends JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime dateTime) => dateTime.toIso8601String();
}