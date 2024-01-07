import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';
import 'package:silvertimetable/data/providers/sggw_hub_api.dart';

class SggwHubRepo {
  final sggwHubApi = SggwHubApi();

  Future<List<LecturerBase>> getLecturers() async {
    final List<LecturerBase> lecturers = [];
    final response = await sggwHubApi.getLecturers();

    for (final json in response.data as List) {
      lecturers.add(LecturerBase.fromJson(json as Map<String, dynamic>));
    }

    return lecturers;
  }

  Future<List<ScheduleBase>> getSchedules() async {
    final List<ScheduleBase> schedules = [];
    final response = await sggwHubApi.getSchedules();

    for (final json in response.data as List) {
      schedules.add(ScheduleBase.fromJson(json as Map<String, dynamic>));
    }

    return schedules;
  }

  Future<List<BaseSchedule>> getSchedulesIndex() async {
    return Future.wait(
      [SggwHubRepo().getSchedules(), SggwHubRepo().getLecturers()],
    ).then((value) => [...value[0], ...value[1]]);
  }

  Future<Schedule> getSchedule(String id) async {
    final response = await sggwHubApi.getSchedule(id);
    return Schedule.fromJson(response.data as Map<String, dynamic>);
  }

  Future<Lecturer> getLecturer(String id) async {
    final response = await sggwHubApi.getLecturer(id);
    return Lecturer.fromJson(response.data as Map<String, dynamic>);
  }
}
