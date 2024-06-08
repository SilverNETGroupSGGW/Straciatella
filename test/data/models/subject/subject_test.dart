// import 'package:flutter_test/flutter_test.dart';
// import 'package:hive/hive.dart';
// import 'package:silvertimetable/constants.dart';
// import 'package:silvertimetable/data/models/classroom/classroom.dart';
// import 'package:silvertimetable/data/models/enums.dart';
// import 'package:silvertimetable/data/models/lesson_def/lesson_def.dart';
// import 'package:silvertimetable/data/models/subject/subject.dart';
// import 'package:silvertimetable/data/register_adapters.dart';

void main() {
  // final json = {
  //   "id": "2075f1d9-dc89-4216-beb3-9ac19e8ab704",
  //   "created": "2023-12-11T21:24:41.4418146",
  //   "updated": "2023-12-11T22:17:50.4933348",
  //   "scheduleId": "46a10323-c491-4e1b-b3ff-c5f75ba0c5ab",
  //   "name": "Test",
  //   "type": "PracticalClasses",
  //   "startTime": "12:00:00",
  //   "dayOfWeek": "Tuesday",
  //   "duration": "01:30:00",
  //   "isRemote": false,
  //   "comment": "",
  //   "schedule": {
  //     "id": "46a10323-c491-4e1b-b3ff-c5f75ba0c5ab",
  //     "created": "2023-12-11T22:17:50.4933348",
  //     "updated": "2023-12-11T22:17:50.4933348",
  //     "startDate": "2023-12-11T22:17:50.4933348",
  //     "name": "AA",
  //     "year": 2,
  //     "semester": 2,
  //     "faculty": "XX",
  //     "fieldOfStudy": "ZZ",
  //     "studyMode": "PartTimeStudies",
  //     "degreeOfStudy": "MastersDegree",
  //   },
  //   "classroom": {
  //     "id": "465eaa62-086c-476f-8a7b-0045c4cfa509",
  //     "created": "2023-11-27T10:30:57.3227462",
  //     "updated": "2023-11-27T10:30:57.3227464",
  //     "name": "Aula IV.",
  //     "floor": "",
  //     "building": "34",
  //   },
  //   "lessons": [
  //     {
  //       "id": "5a161256-ef9d-4523-9462-15f0adfc380e",
  //       "created": "2023-12-22T17:48:37.7724059",
  //       "updated": "2023-12-22T17:49:28.7739208",
  //       "numberOfLesson": 1,
  //       "startTime": "2024-05-01T10:00:00",
  //       "duration": "01:30:00",
  //     },
  //     {
  //       "id": "cea2f0ef-66cc-4ba4-9a21-5ec586d6ec1b",
  //       "created": "2023-12-22T17:49:28.7635819",
  //       "updated": "2023-12-22T17:49:28.7739372",
  //       "numberOfLesson": 2,
  //       "startTime": "2024-02-28T01:00:00",
  //       "duration": "01:45:00",
  //     }
  //   ],
  //   "groups": [
  //     {
  //       "id": "efe04f87-3d7d-46f8-9cc1-0852564be8fa",
  //       "created": "2023-12-11T21:24:14.1256362",
  //       "updated": "2023-12-11T21:24:14.1256709",
  //       "scheduleId": "46a10323-c491-4e1b-b3ff-c5f75ba0c5ab",
  //       "name": "1",
  //     }
  //   ],
  // };

  // final subject = Subject(
  //   id: "2075f1d9-dc89-4216-beb3-9ac19e8ab704",
  //   created: DateTime.parse("2023-12-11T21:24:41.4418146"),
  //   updated: DateTime.parse("2023-12-11T22:17:50.4933348"),
  //   scheduleId: "46a10323-c491-4e1b-b3ff-c5f75ba0c5ab",
  //   name: "Test",
  //   type: "PracticalClasses",
  //   startTime: "12:00:00",
  //   dayOfWeek: DayOfWeek.tuesday,
  //   duration: const Duration(hours: 1, minutes: 30),
  //   isRemote: false,
  //   comment: "",
  //   schedule: ScheduleBase(
  //     id: "46a10323-c491-4e1b-b3ff-c5f75ba0c5ab",
  //     created: DateTime.parse("2023-12-11T22:17:50.4933348"),
  //     updated: DateTime.parse("2023-12-11T22:17:50.4933348"),
  //     startDate: DateTime.parse("2023-12-11T22:17:50.4933348"),
  //     name: "AA",
  //     year: 2,
  //     semester: 2,
  //     faculty: "XX",
  //     fieldOfStudy: "ZZ",
  //     studyMode: "PartTimeStudies",
  //     degreeOfStudy: "MastersDegree",
  //   ),
  //   classroom: Classroom(
  //     id: "465eaa62-086c-476f-8a7b-0045c4cfa509",
  //     created: DateTime.parse("2023-11-27T10:30:57.3227462"),
  //     updated: DateTime.parse("2023-11-27T10:30:57.3227464"),
  //     name: "Aula IV.",
  //     floor: "",
  //     building: "34",
  //   ),
  //   lessons: [
  //     LessonDef(
  //       id: "5a161256-ef9d-4523-9462-15f0adfc380e",
  //       created: DateTime.parse("2023-12-22T17:48:37.7724059"),
  //       updated: DateTime.parse("2023-12-22T17:49:28.7739208"),
  //       numberOfLesson: 1,
  //       startTime: DateTime.parse("2024-05-01T10:00:00"),
  //       duration: const Duration(hours: 1, minutes: 30),
  //     ),
  //     LessonDef(
  //       id: "cea2f0ef-66cc-4ba4-9a21-5ec586d6ec1b",
  //       created: DateTime.parse("2023-12-22T17:49:28.7635819"),
  //       updated: DateTime.parse("2023-12-22T17:49:28.7739372"),
  //       numberOfLesson: 2,
  //       startTime: DateTime.parse("2024-02-28T01:00:00"),
  //       duration: const Duration(hours: 1, minutes: 45),
  //     ),
  //   ],
  //   groups: [
  //     ScheduleGroup(
  //       id: "efe04f87-3d7d-46f8-9cc1-0852564be8fa",
  //       created: DateTime.parse("2023-12-11T21:24:14.1256362"),
  //       updated: DateTime.parse("2023-12-11T21:24:14.1256709"),
  //       scheduleId: "46a10323-c491-4e1b-b3ff-c5f75ba0c5ab",
  //       name: "1",
  //     ),
  //   ],
  // );
  // group("Subject tests", () {
  //   test('Subject json parsing', () {
  //     expect(Subject.fromJson(json), subject);
  //   });

  //   test('Subject hive save/load', () async {
  //     registerDataAdapters();
  //     await Hive.openBox(
  //       hiveBoxName,
  //       path: testingLocation,
  //     );

  //     final box = Hive.box(hiveBoxName);

  //     box.put("test_subject", subject);
  //     final subjectRead = box.get("test_subject");
  //     expect(subjectRead, subject);

  //     await Hive.box(hiveBoxName).clear();
  //   });
  // });
}
