import 'package:flutter/material.dart';

extension TimeOfDayExt on TimeOfDay {
  TimeOfDay operator +(Duration other) {
    final int minutes = this.hour * 60 + this.minute + other.inMinutes;

    final hours = minutes ~/ 60;
    final minute = minutes - hours * 60;
    return TimeOfDay(hour: hours % 24, minute: minute);
  }
}
