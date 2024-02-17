import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/models/filter_type.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/new_lecturer_filter_screen.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/new_schedule_filter_screen.dart';

// ignore: must_be_immutable
class NewFilterScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NewFilterScreen({super.key, required this.filterType});

  FilterType filterType;

  @override
  State<NewFilterScreen> createState() => _NewFilterScreenState();
}

class _NewFilterScreenState extends State<NewFilterScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<ScheduleManagerBloc>()
        .add(const ScheduleManagerEvent.updateIndex());
  }

  @override
  Widget build(BuildContext context) {
    return widget.filterType == FilterType.schedule
        ? NewScheduleFilterScreen()
        : BlocProvider<LecturerPickedCubit>(
            create: (_) => LecturerPickedCubit(),
            child: NewLecturerFilterScreen(),
          );
  }
}
