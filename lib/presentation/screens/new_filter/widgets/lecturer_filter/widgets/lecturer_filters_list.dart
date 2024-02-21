import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_level_filter.dart';

// ignore: must_be_immutable
class LecturerFiltersList extends StatefulWidget {
  const LecturerFiltersList({super.key});

  @override
  State<LecturerFiltersList> createState() => _LecturerFiltersListState();
}

class _LecturerFiltersListState extends State<LecturerFiltersList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
        builder: (context, state) {
          return LecturerLevelFilter(
            initiallyExpanded: true,
            level: state.lecturersOptionsTree!,
          );
        },
      ),
    );
  }
}
