import 'package:flutter/material.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/repositories/sggw_hub_repo.dart';

class ScheduleIndexBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext,
    AsyncSnapshot<List<BaseSchedule>>,
  ) builder;

  const ScheduleIndexBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BaseSchedule>>(
      future: Future.wait(
        [SggwHubRepo().getSchedules(), SggwHubRepo().getLecturers()],
      ).then((value) => [...value[0], ...value[1]]),
      builder: builder,
    );
  }
}
