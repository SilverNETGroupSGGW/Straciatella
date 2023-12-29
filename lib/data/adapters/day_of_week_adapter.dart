import 'package:silvertimetable/data/adapters/enum_adapter.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';
import 'package:silvertimetable/data/models/enums.dart';

class DayOfWeekAdapter extends EnumAdapter<DayOfWeek> {
  @override
  final typeId = HiveTypeIds.dayOfWeek;
}
