import 'package:freezed_annotation/freezed_annotation.dart';

RegExp _durationRe =
    RegExp(r"(?<hours>\d{1,2}):(?<minutes>\d{1,2}):(?<seconds>\d{1,2})");

class ApiDurationConverter extends JsonConverter<Duration, String> {
  const ApiDurationConverter();

  @override
  Duration fromJson(String json) {
    final match = _durationRe.firstMatch(json)!;
    final hours = int.parse(match.namedGroup("hours")!);
    final minutes = int.parse(match.namedGroup("minutes")!);
    final seconds = int.parse(match.namedGroup("seconds")!);

    return Duration(hours: hours, minutes: minutes, seconds: seconds);
  }

  @override
  String toJson(Duration object) {
    int seconds = object.inSeconds;
    int minutes = seconds ~/ 60;
    seconds %= 60;
    int hours = minutes ~/ 60;
    minutes %= 60;

    pad(int val) {
      return val.toString().padLeft(2, "0");
    }

    return "${pad(hours)}:${pad(minutes)}:${pad(seconds)}";
  }
}
