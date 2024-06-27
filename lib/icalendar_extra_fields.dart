import 'package:icalendar_parser/icalendar_parser.dart';

void registerICalendarFields() {
  ICalendar.registerField(
    field: "DURATION",
    function: (value, _, __, lastEvent) {
      lastEvent['duration'] = _parseDuration(value);
      return lastEvent;
    },
  );
}

Duration _parseDuration(String value) {
  final durRegexp = RegExp('(?:([0-9]+)(D|W|H|M|S))', caseSensitive: false);
  final durMatches = durRegexp.allMatches(value);

  int getValueFor(String valueKey) {
    late final String value;
    try {
      value = durMatches
              .firstWhere(
                (element) => element.group(2)?.toUpperCase() == valueKey,
              )
              .group(1) ??
          "0";
    } catch (e) {
      value = "0";
    }
    return int.tryParse(value) ?? 0;
  }

  final hasWeeks = durMatches.map((e) => e.group(2)).any(
        (element) => element?.toUpperCase() == "W",
      );

  if (hasWeeks) {
    // this is weird, it will be wrong for leap days
    // good there will be no lessons with duration like that
    return Duration(
      days: getValueFor("W") * 7,
    );
  }

  return Duration(
    days: getValueFor("D"),
    hours: getValueFor("H"),
    minutes: getValueFor("M"),
    seconds: getValueFor("S"),
  );
}
