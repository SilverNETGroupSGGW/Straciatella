import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/providers/sggw_hub_api.dart';

import '../models/schedule/schedule_base.dart';

class SggwHubRepo {
  final sggwHubApi = SggwHubApi();

  Future<List<LecturerBase>> getLecturers() async {
    final List<LecturerBase> lecturers = [];
    final response = await sggwHubApi.getLecturers();

    for (Map<String, dynamic> json in response.data) {
      lecturers.add(LecturerBase.fromJson(json));
    }

    return lecturers;
  }

  Future<List<ScheduleBase>> getSchedules() async {
    final List<ScheduleBase> schedules = [];
    final response = await sggwHubApi.getSchedules();

    for (Map<String, dynamic> json in response.data) {
      schedules.add(ScheduleBase.fromJson(json));
    }

    return schedules;
  }

}