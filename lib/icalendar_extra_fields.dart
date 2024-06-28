import 'package:icalendar_parser/icalendar_parser.dart';
import 'package:silvertimetable/data/converters/ic_duration.dart';

void registerICalendarFields() {
  ICalendar.registerField(
    field: "DURATION",
    function: (value, _, __, lastEvent) {
      lastEvent['duration'] = DurationExt.fromICalendar(value);
      return lastEvent;
    },
  );
}
