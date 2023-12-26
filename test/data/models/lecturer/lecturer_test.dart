import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';

void main() {
  test('Creates Lecturer object using Lecturer.fromJson(...)', () {
    final String json =
        '{"id": "8a563599-4a25-470e-0547-08dbeeaa6ca9", "created": "2023-11-26T18:06:33.7820837", "updated": "2023-11-26T18:06:33.7821303","firstName": "Aleksandra", "surname": "Konopka","academicDegree": "", "email": ""}';

    final lecturer = Lecturer.fromJson(jsonDecode(json));

    final correctLecturer = Lecturer(
        id: "8a563599-4a25-470e-0547-08dbeeaa6ca9",
        created: DateTime(2023, 11, 26, 18, 6, 33, 782, 83),
        updated: DateTime(2023, 11, 26, 18, 6, 33, 782, 130),
        firstName: 'Aleksandra',
        surname: 'Konopka',
        academicDegree: '',
        email: '');

    expect(lecturer.id, correctLecturer.id);
    expect(lecturer.created, correctLecturer.created);
    expect(lecturer.updated, correctLecturer.updated);
    expect(lecturer.firstName, correctLecturer.firstName);
    expect(lecturer.surname, correctLecturer.surname);
    expect(lecturer.academicDegree, correctLecturer.academicDegree);
    expect(lecturer.email, correctLecturer.email);
  });
}
