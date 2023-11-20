// {
//   "id": "191befce-19e0-4557-9485-08dbea0c03e3",
//   "created": "2023-11-20T21:02:32.8731447",
//   "updated": "2023-11-20T21:02:32.8731898",
//   "firstName": "X",
//   "surname": "Xsinski",
//   "academicDegree": "prof. – profesor",
//   "email": "x@x.pl"
// }

class Lecturer {
  String id;
  String created;
  String updated;
  String firstName;
  String surname;
  String academicDegree;
  String email;

  Lecturer({
    required this.id,
    required this.created,
    required this.updated,
    required this.firstName,
    required this.surname,
    required this.academicDegree,
    required this.email,
  });

  factory Lecturer.fromJson(Map<String, dynamic> json) {
    return Lecturer(
      id: json['id'],
      created: json['created'],
      updated: json['updated'],
      firstName: json['firstName'],
      surname: json['surname'],
      academicDegree: json['academicDegree'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'created': created,
        'updated': updated,
        'firstName': firstName,
        'surname': surname,
        'academicDegree': academicDegree,
        'email': email,
      };

  @override
  String toString() {
    return 'Lecturer{id: $id, created: $created, updated: $updated, firstName: $firstName, surname: $surname, academicDegree: $academicDegree, email: $email}';
  }
}
