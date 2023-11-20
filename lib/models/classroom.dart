// {
//   "id": "9b22c977-9120-4292-8e17-aeee4c104405",
//   "created": "2023-11-20T21:02:42.5213518",
//   "updated": "2023-11-20T21:02:42.5213895",
//   "name": "3/40",
//   "building": "34"
// }

class Classroom {
  String id;
  String created;
  String updated;
  String name;
  String building;

  Classroom({
    required this.id,
    required this.created,
    required this.updated,
    required this.name,
    required this.building,
  });

  factory Classroom.fromJson(Map<String, dynamic> json) {
    return Classroom(
      id: json['id'],
      created: json['created'],
      updated: json['updated'],
      name: json['name'],
      building: json['building'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'created': created,
        'updated': updated,
        'name': name,
        'building': building,
      };

  @override
  String toString() {
    return 'Classroom{id: $id, created: $created, updated: $updated, name: $name, building: $building}';
  }
}
