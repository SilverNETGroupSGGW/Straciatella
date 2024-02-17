import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_level_filter.dart';

// ignore: must_be_immutable
class LecturerFiltersList extends StatefulWidget {
  LecturerFiltersList({super.key, required this.optionsTree});

  OptionsTreeNode optionsTree;

  @override
  State<LecturerFiltersList> createState() => _LecturerFiltersListState();
}

class _LecturerFiltersListState extends State<LecturerFiltersList> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ScheduleManagerBloc, ScheduleManagerState>(
      listener: (context, state) {
        widget.optionsTree = state.lecturersOptionsTree!;
      },
      child: SingleChildScrollView(
        child: LecturerLevelFilter(
          level: widget.optionsTree,
        ),
      ),
    );
  }
}
