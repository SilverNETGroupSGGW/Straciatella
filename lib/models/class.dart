class Class {
  Class({
    required this.name,
    required this.type,
    required this.teacher,
    required this.room,
    required this.floor,
    required this.start,
    required this.end,
  });

  final String name;
  final String type;
  final String teacher;
  final String room;
  final String floor;
  final Time start;
  final Time end;
}

class Time {
  Time({
    required this.hour,
    required this.minute,
  });

  int timeBetween(Time other) {
    return (other.hour - hour) * 60 + (other.minute - minute);
  }

  @override
  String toString() {
    // if minute is less than 10, add a 0 before it
    String minuteString = minute < 10 ? "0$minute" : minute.toString();
    return "$hour:$minuteString";
  }

  final int hour;
  final int minute;
}
