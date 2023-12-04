// {
//   "id": "191befce-19e0-4557-9485-08dbea0c03e3",
//   "created": "2023-11-20T21:02:32.8731447",
//   "updated": "2023-11-20T21:02:32.8731898",
//   "firstName": "X",
//   "surname": "Xsinski",
//   "academicDegree": "prof. – profesor",
//   "email": "x@x.pl"
// }

import 'package:psggw/models/degree.dart';

class Lecturer {
  String id;

  String firstName;
  String surname;
  Degree degree;
  String email;

  Lecturer({
    required this.id,
    required this.firstName,
    required this.surname,
    required this.degree,
    required this.email,
  });

  String toString() {
    return "$firstName $surname";
  }
}
