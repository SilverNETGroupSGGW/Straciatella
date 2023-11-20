// {
//   "id": "acd7aebf-1b75-4f9f-8edf-733d021b5d13",
//   "created": "2023-11-20T21:03:00.853938",
//   "updated": "2023-11-20T21:03:00.8539778",
//   "name": "Informatyka R3S5"
// }

class Schedule {
  String id;
  String created;
  String updated;
  String name;

  Schedule({
    required this.id,
    required this.created,
    required this.updated,
    required this.name,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
      id: json['id'],
      created: json['created'],
      updated: json['updated'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'created': created,
        'updated': updated,
        'name': name,
      };

  @override
  String toString() {
    return 'Schedule{id: $id, created: $created, updated: $updated, name: $name}';
  }
}
