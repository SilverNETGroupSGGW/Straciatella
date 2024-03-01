import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/search_input/search_input_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/new_lecturer_filter_screen.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/cubits/user_choices/user_choices_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/new_schedule_filter_screen.dart';

class NewFilterScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NewFilterScreen({super.key, required this.filterType});

  final ScheduleType filterType;

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
    return widget.filterType == ScheduleType.schedule
        ? BlocProvider<UserChoicesCubit>(
            create: (context) => UserChoicesCubit(),
            child: NewScheduleFilterScreen(),
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
            child: NewLecturerFilterScreen(),
          );
  }
}
