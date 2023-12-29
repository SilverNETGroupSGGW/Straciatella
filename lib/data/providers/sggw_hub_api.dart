import 'dart:async';
import 'package:dio/dio.dart';
import 'package:silvertimetable/constants.dart';

class SggwHubApi {
  final dio = Dio();

  Future<Response> getLecturers() async => dio.getUri(Uri.parse('$apiUrl/Lecturers'));

  Future<Response>getLecturer(String id) async => dio.getUri(Uri.parse('$apiUrl/Lecturers/$id/schedule/full'));

  Future<Response>  getSchedules() async => dio.getUri(Uri.parse('$apiUrl/Schedules'));

  Future<Response> getSchedule(String id) async => dio.getUri(Uri.parse('$apiUrl/Schedules/$id'));

}