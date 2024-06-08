import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/lecturer_schedule/cubits/search_input/search_input_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/lecturer_schedule/widgets/lecturer_tile.dart';

class LecturerSchedulesList extends StatelessWidget {
  const LecturerSchedulesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final scheduleManagerState = context.watch<ScheduleManagerBloc>().state;
        final searchInputState = context.watch<SearchInputCubit>().state;

        final List<LecturerBase> lecturers =
            scheduleManagerState.lecturersIndex.values.toList();

        final List<LecturerBase> matchingLecturers =
            getMatchingLecturers(lecturers, searchInputState.searchInput);

        return ListView.builder(
          itemCount: matchingLecturers.length,
          itemBuilder: (context, index) => LecturerScheduleTile(
            lecturer: matchingLecturers[index],
          ),
        );
      },
    );
  }

  String lecturerInfoString(LecturerBase lecturer) =>
      '${lecturer.academicDegree} ${lecturer.firstName} ${lecturer.surName} ${lecturer.email}';

  List<LecturerBase> getMatchingLecturers(
    List<LecturerBase> lecturers,
    String input,
  ) {
    final List<LecturerBase> matched = [];
    for (final lecturer in lecturers) {
      if (lecturerInfoString(lecturer)
          .toLowerCase()
          .contains(input.toLowerCase())) {
        matched.add(lecturer);
      }
    }
    return matched;
  }
}
