import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/lecturer_schedule/cubits/lecturer_picked/lecturer_picked_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/lecturer_schedule/cubits/search_input/search_input_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/lecturer_schedule/new_lecturer_schedule_screen.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/student_schedule/cubits/user_choices/user_choices_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/student_schedule/new_student_schedule_screen.dart';

class NewScheduleScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NewScheduleScreen({super.key, required this.filterType});

  final ScheduleType filterType;

  @override
  State<NewScheduleScreen> createState() => _NewScheduleScreenState();
}

class _NewScheduleScreenState extends State<NewScheduleScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<ScheduleManagerBloc>()
        .add(const ScheduleManagerEvent.updateIndex());
  }

  @override
  Widget build(BuildContext context) {
    return widget.filterType == ScheduleType.studyProgram
        ? BlocProvider<UserChoicesCubit>(
            create: (context) => UserChoicesCubit(
              scheduleManagerBloc: context.read<ScheduleManagerBloc>(),
            ),
            child: NewStudentScheduleScreen(),
          )
        : MultiBlocProvider(
            providers: [
              BlocProvider<LecturerPickedCubit>(
                create: (context) => LecturerPickedCubit(),
              ),
              BlocProvider<SearchInputCubit>(
                create: (context) => SearchInputCubit(),
              ),
            ],
            child: NewLecturerScheduleScreen(),
          );
  }
}
