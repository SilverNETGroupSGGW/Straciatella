import 'package:mockito/mockito.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/repositories/sggw_hub_repo.dart';

class FakeSggwHubRepo extends Fake implements SggwHubRepo {
  @override
  Future<List<Lecturer>> getLecturers(String orgId) async {
    throw UnimplementedError();
  }
}
