import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/repositories/sggw_hub_repo.dart';
import 'package:silvertimetable/data/types.dart';

class PreviewScheduleBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    AsyncSnapshot<ExtendedSchedule> schedule,
  ) builder;
  final ScheduleKey scheduleKey;

  const PreviewScheduleBuilder({
    super.key,
    required this.builder,
    required this.scheduleKey,
  });

  @override
  Widget build(BuildContext context) {
    final repo = GetIt.instance.get<SggwHubRepo>();
    return FutureBuilder<ExtendedSchedule>(
      future: scheduleKey.type is LecturerBase
          ? repo.getLecturer(scheduleKey.id)
          : repo.getSchedule(scheduleKey.id),
      builder: builder,
    );
  }
}
