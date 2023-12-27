import 'package:hive/hive.dart';
import 'package:silvertimetable/logic/saved_schedules/saved_schedules_cubit.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

registerLogicDataAdapters() {
  Hive.registerAdapter(SavedSchedulesStateAdapter());
  Hive.registerAdapter(SettingsStateAdapter());
}
