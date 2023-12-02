// {
//   "id": "a2145fed-6ff6-480b-99dc-08dbea0ad4e4",
//   "userName": "fabbbian@interia.pl",
//   "email": "fabbbian@interia.pl",
//   "isEmailConfirmed": true,
//   "createdAt": "2023-11-20T20:54:03.3075491+00:00",
//   "updatedAt": "2023-11-20T20:54:03.3075849+00:00",
//   "isDeleted": false
// }

class Account {
  Account({
    required this.id,
    required this.userName,
    required this.email,
    required this.isEmailConfirmed,
    required this.isDeleted,
  });
  String id;
  String userName;
  String email;
  bool isEmailConfirmed;

  bool isDeleted;
}
