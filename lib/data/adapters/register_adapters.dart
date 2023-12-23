import 'package:hive/hive.dart';
import 'package:silvertimetable/data/adapters/color_adapter.dart';
import 'package:silvertimetable/data/adapters/theme_mode_adapter.dart';

registerDataAdapters() {
  Hive.registerAdapter(ColorAdapter());
  Hive.registerAdapter(ThemeModeAdapter());
}
