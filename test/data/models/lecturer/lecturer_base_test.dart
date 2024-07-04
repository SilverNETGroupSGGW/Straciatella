import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/organization/organization.dart';
import 'package:silvertimetable/data/register_adapters.dart';

void main() {
  // final json = {
  //   "id": "8a563599-4a25-470e-0547-08dbeeaa6ca9",
  //   "created": "2023-11-26T18:06:33.7820837",
  //   "updated": "2023-11-26T18:06:33.7821303",
  //   "firstName": "FirstName",
  //   "surname": "LastName",
  //   "academicDegree": "Masters",
  //   "email": "flastname@sggw.edu.pl",
  //   "institute": "Institute",
  //   "organization": {
  //     "id": "8a563599-4a25-470e-0547-08dbeeaa6ca9",
  //     "created": "2023-11-26T18:06:33.7820837",
  //     "updated": "2023-11-26T18:06:33.7821303",
  //     "name": "Org",
  //   },
  // };
  final Organization organization = Organization(
    id: "8a563599-4a25-470e-0547-08dbeeaa6ca9",
    created: DateTime(2023, 11, 26, 18, 6, 33, 782, 83),
    updated: DateTime(2023, 11, 26, 18, 6, 33, 782, 130),
    name: "Org",
  );
  final lecturerBase = LecturerBase(
    id: "8a563599-4a25-470e-0547-08dbeeaa6ca9",
    created: DateTime(2023, 11, 26, 18, 6, 33, 782, 83),
    updated: DateTime(2023, 11, 26, 18, 6, 33, 782, 130),
    firstName: 'FirstName',
    surName: 'LastName',
    academicDegree: 'Masters',
    email: 'flastname@sggw.edu.pl',
    institute: "Institute",
    organization: organization,
  );

  group("LecturerBase tests", () {
    // test('LecturerBase json parsing', () {
    //   expect(LecturerBase.fromJson(json), lecturerBase);
    // });

    test('LecturerBase hive save/load', () async {
      registerDataAdapters();
      await Hive.openBox(
        hiveBoxName,
        path: testingLocation,
      );

      final box = Hive.box(hiveBoxName);

      box.put("test_lecturerBase", lecturerBase);
      final lecturerBaseRead = box.get("test_lecturerBase");
      expect(lecturerBaseRead, lecturerBase);

      await Hive.box(hiveBoxName).clear();
    });
  });
}
