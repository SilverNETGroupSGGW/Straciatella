import 'package:silvertimetable/data/adapters/enum_adapter.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';
import 'package:silvertimetable/themes.dart';

class ThemeTypeAdapter extends EnumAdapter<ThemeType> {
  @override
  final typeId = HiveTypeIds.themeType;
}