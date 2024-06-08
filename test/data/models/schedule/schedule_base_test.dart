import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/models/organization/organization.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/models/tenant/tenant.dart';
import 'package:silvertimetable/data/register_adapters.dart';

void main() {
  final json = {
    "id": "ba0d9a27-3078-4709-81e6-2d8b4e1c8a71",
    "created": "2023-11-27T00:00:06.6281617",
    "updated": "2023-11-27T00:00:06.6281618",
    "startDate": "0001-01-01T00:00:00+00:00",
    "name": "Informatyka R2S3 NONSTACIONARY MASTER",
    "year": 0,
    "semester": 0,
    "faculty": "WZIM",
    "fieldOfStudy": "Informatyka",
    "studyMode": "Unknown",
    "degreeOfStudy": "AssociateDegree",
  };
  final Organization organization = Organization(
    id: "ba0d9a27-3078-4709-81e6-2d8b4e1c8a71",
    created: DateTime.parse("2023-11-27T00:00:06.6281617"),
    updated: DateTime.parse("2023-11-27T00:00:06.6281618"),
    name: "org",
  );
  final Tenant tenant = Tenant(
    id: "ba0d9a27-3078-4709-81e6-2d8b4e1c8a71",
    created: DateTime.parse("2023-11-27T00:00:06.6281617"),
    updated: DateTime.parse("2023-11-27T00:00:06.6281618"),
    name: "wydzial",
    organization: organization,
  );
  final studyProgram = StudyProgramBase(
    id: "ba0d9a27-3078-4709-81e6-2d8b4e1c8a71",
    created: DateTime.parse("2023-11-27T00:00:06.6281617"),
    updated: DateTime.parse("2023-11-27T00:00:06.6281618"),
    startDate: "0001-01-01T00:00:00+00:00",
    name: "Informatyka R2S3 NONSTACIONARY MASTER",
    faculty: "WZIM",
    fieldOfStudy: "Informatyka",
    studyMode: "Unknown",
    degreeOfStudy: "AssociateDegree",
    tenant: tenant,
  );
  group("StudyProgram tests", () {
    test('StudyProgram json parsing', () {
      expect(StudyProgram.fromJson(json), studyProgram);
    });

    test('StudyProgram hive save/load', () async {
      registerDataAdapters();
      await Hive.openBox(
        hiveBoxName,
        path: testingLocation,
      );

      final box = Hive.box(hiveBoxName);

      box.put("test_studyProgram", studyProgram);
      final studyProgramRead = box.get("test_studyProgram");
      expect(studyProgramRead, studyProgram);

      await Hive.box(hiveBoxName).clear();
    });
  });
}
