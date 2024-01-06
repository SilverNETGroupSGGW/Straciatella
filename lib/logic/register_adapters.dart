import 'package:hive/hive.dart';
import 'package:silvertimetable/logic/faved_schedules/faved_schedules_cubit.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

void registerLogicDataAdapters() {
  Hive.registerAdapter(FavedSchedulesStateAdapter());
  Hive.registerAdapter(SettingsStateAdapter());
}
