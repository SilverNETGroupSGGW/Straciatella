import 'package:hive/hive.dart';
import 'package:psggw/data/adapters/color_adapter.dart';
import 'package:psggw/data/adapters/theme_mode_adapter.dart';

registerDataAdapters() {
  Hive.registerAdapter(ColorAdapter());
  Hive.registerAdapter(ThemeModeAdapter());
}