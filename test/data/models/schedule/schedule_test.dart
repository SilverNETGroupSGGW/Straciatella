import 'package:flutter_test/flutter_test.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';

void main() {
  testWidgets('schedule ...', (tester) async {
    final json = {
      "id": "ba0d9a27-3078-4709-81e6-2d8b4e1c8a71",
      "created": "2023-11-27T00:00:06.6281617",
      "updated": "2023-11-27T00:00:06.6281618",
      "startDate": "0001-01-01T00:00:00+00:00",
      "name": "Informatyka R2S3 NONSTACIONARY MASTER",
      "year": 0,
      "semester": 0,
      "faculty": "",
      "fieldOfStudy": "",
      "studyMode": "Unknown",
      "degreeOfStudy": "AssociateDegree",
      "subjects": [],
    };

    final schedule = ScheduleBase.fromJson(json);
    print(schedule);
  });
}
