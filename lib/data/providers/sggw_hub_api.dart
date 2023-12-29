import 'dart:async';
import 'package:dio/dio.dart';
import 'package:silvertimetable/constants.dart';

class SggwHubApi {
  final dio = Dio();

  Future getLecturers() async => dio.getUri(Uri.parse('$apiUrl/Lecturers'));

  Future getLecturer(String id) async => dio.getUri(Uri.parse('$apiUrl/Lecturers/$id/schedule/full'));

  Future getSchedules() async => dio.getUri(Uri.parse('$apiUrl/Schedules'));

  Future getSchedule(String id) async => dio.getUri(Uri.parse('$apiUrl/Schedules/$id'));

}