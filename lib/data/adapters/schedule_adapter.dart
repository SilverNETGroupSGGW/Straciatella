import 'package:hive/hive.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';

class ScheduleAdapeter extends TypeAdapter<Schedule> {
  @override
  final int typeId = HiveTypeIds.schedule;

  @override
  Schedule read(BinaryReader reader) {
    return Schedule(
      id: reader.readString(),
      created: DateTime.parse(reader.readString()),
      updated: DateTime.parse(reader.readString()),
      startDate: DateTime.parse(reader.readString()),
      name: reader.readString(),
      degreeOfStudy: reader.readString(),
      faculty: reader.readString(),
      semester: reader.readInt(),
      studyMode: reader.readString(),
      subjects: reader.readStringList(),
      year: reader.readInt(),
      fieldOfStudy: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, Schedule obj) {
    writer
      ..writeString(obj.id)
      ..writeString(obj.created.toIso8601String())
      ..writeString(obj.updated.toIso8601String())
      ..writeString(obj.startDate.toIso8601String())
      ..writeString(obj.name)
      ..writeString(obj.degreeOfStudy)
      ..writeString(obj.faculty)
      ..writeInt(obj.semester)
      ..writeString(obj.studyMode)
      ..writeStringList(obj.subjects)
      ..writeInt(obj.year)
      ..writeString(obj.fieldOfStudy);
  }
}
