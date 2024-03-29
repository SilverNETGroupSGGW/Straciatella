import 'package:mockito/mockito.dart';
import 'package:silvertimetable/data/fakes/mock_jsons.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';
import 'package:silvertimetable/data/repositories/sggw_hub_repo.dart';

class FakeSggwHubRepo extends Fake implements SggwHubRepo {
  @override
  Future<Schedule> getSchedule(String id) async {
    return Schedule.fromJson(mockSchedule..["id"] = id);
  }

  @override
  Future<Lecturer> getLecturer(String id) async {
    return Lecturer.fromJson(mockLecturer..["id"] = id);
  }

  @override
  Future<List<BaseSchedule>> getSchedulesIndex() async {
    return [
      ...mockSchedulesIndex.map(ScheduleBase.fromJson),
      ...mockLecturersIndex.map(LecturerBase.fromJson),
    ];
  }
}
