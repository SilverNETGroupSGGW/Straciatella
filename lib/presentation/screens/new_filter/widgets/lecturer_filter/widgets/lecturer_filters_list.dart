import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_tile.dart';

// ignore: must_be_immutable
class LecturerFiltersList extends StatefulWidget {
  const LecturerFiltersList({super.key});

  @override
  State<LecturerFiltersList> createState() => _LecturerFiltersListState();
}

class _LecturerFiltersListState extends State<LecturerFiltersList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      builder: (context, state) {
        final List<LecturerBase> lecturers =
            state.schedulesIndex.values.whereType<LecturerBase>().toList();

        return ListView.builder(
          itemCount: lecturers.length,
          itemBuilder: (context, index) =>
              LecturerTile(lecturer: lecturers[index]),
        );
      },
    );
  }
}
