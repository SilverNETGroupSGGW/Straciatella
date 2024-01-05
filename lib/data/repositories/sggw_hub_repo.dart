import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';
import 'package:silvertimetable/data/providers/sggw_hub_api.dart';

class SggwHubRepo {
  final sggwHubApi = SggwHubApi();

  Future<List<LecturerBase>> getLecturers() async {
    final List<LecturerBase> lecturers = [];
    final response = await sggwHubApi.getLecturers();

    for (final Map<String, dynamic> json
        in response.data as List<Map<String, dynamic>>) {
      lecturers.add(LecturerBase.fromJson(json));
    }

    return lecturers;
  }

  Future<List<ScheduleBase>> getSchedules() async {
    final List<ScheduleBase> schedules = [];
    final response = await sggwHubApi.getSchedules();

    for (final Map<String, dynamic> json
        in response.data as List<Map<String, dynamic>>) {
      schedules.add(ScheduleBase.fromJson(json));
    }

    return schedules;
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
