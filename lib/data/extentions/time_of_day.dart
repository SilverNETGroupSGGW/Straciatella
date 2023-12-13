import 'package:flutter/material.dart';

extension TimeOfDayExtention on TimeOfDay {
  operator +(Duration duration) {
    return TimeOfDay(
      hour: this.hour + duration.inHours + (duration.inMinutes % 60) ~/ 60,
      minute: this.minute + duration.inMinutes % 60,
    );
  }

  operator -(arg) {
    if (arg is Duration) {
      return TimeOfDay(
        hour: this.hour - arg.inHours - (arg.inMinutes % 60) ~/ 60,
        minute: this.minute - arg.inMinutes % 60,
      );
    } else if (arg is TimeOfDay) {
      return Duration(
        hours: this.hour - arg.hour,
        minutes: this.minute - arg.minute,
      );
    }
  }

  bool operator <(arg) {
    if (arg is Duration) {
      return this.hour < arg.inHours + (arg.inMinutes % 60) ~/ 60 ||
          (this.hour == arg.inHours + (arg.inMinutes % 60) ~/ 60 &&
              this.minute < arg.inMinutes % 60);
    } else if (arg is TimeOfDay) {
      return this.hour < arg.hour ||
          (this.hour == arg.hour && this.minute < arg.minute);
    } else {
      throw Exception("Unsupported type");
    }
  }
}
