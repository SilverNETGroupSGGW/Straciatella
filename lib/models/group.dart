// {
//   "id": "556d75cd-8ad4-4e99-ada6-1003abf1cd60",
//   "created": "2023-11-20T21:03:07.7515417",
//   "updated": "2023-11-20T21:03:07.7515796",
//   "scheduleId": "acd7aebf-1b75-4f9f-8edf-733d021b5d13",
//   "name": "Grupa 1"
// },

class Group {
  String id;
  String created;
  String updated;
  String scheduleId;
  String name;

  Group({
    required this.id,
    required this.created,
    required this.updated,
    required this.scheduleId,
    required this.name,
  });

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      id: json['id'],
      created: json['created'],
      updated: json['updated'],
      scheduleId: json['scheduleId'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'created': created,
        'updated': updated,
        'scheduleId': scheduleId,
        'name': name,
      };

  @override
  String toString() {
    return 'Group{id: $id, created: $created, updated: $updated, scheduleId: $scheduleId, name: $name}';
  }
}
