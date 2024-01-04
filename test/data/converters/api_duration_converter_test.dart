import 'package:flutter_test/flutter_test.dart';
import 'package:silvertimetable/data/converters/api_duration_converter.dart';

void main() {
  test('Tests parsing of duration from api', () {
    const conv = ApiDurationConverter();
    final testPairs = [
      (const Duration(hours: 12, minutes: 30), "12:30:00"),
      (const Duration(hours: 6, minutes: 30), "06:30:00"),
      (const Duration(hours: 2), "02:00:00"),
      (const Duration(minutes: 30), "00:30:00"),
      (const Duration(seconds: 10), "00:00:10"),
      (const Duration(), "00:00:00"),
    ];

    for (var pair in testPairs) {
      expect(conv.toJson(pair.$1), pair.$2);
      expect(conv.fromJson(pair.$2), pair.$1);
    }
  });
}
