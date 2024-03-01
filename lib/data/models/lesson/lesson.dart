import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/api_duration_converter.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  @HiveType(
    typeId: HiveTypeIds.lesson,
    adapterName: "LessonAdapter",
  )
  factory Lesson({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required int numberOfLesson,
    @HiveField(4) @DateTimeConverter() required DateTime startTime,
    @HiveField(5) @ApiDurationConverter() required Duration duration,
  }) = _Lesson;
  Lesson._();

  DateTime get endTime => startTime.add(duration);

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}
