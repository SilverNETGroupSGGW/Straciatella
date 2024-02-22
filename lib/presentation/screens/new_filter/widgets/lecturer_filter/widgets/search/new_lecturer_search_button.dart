import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/search/new_lecturer_search_delegate.dart';

class NewLecturerSearchButton extends StatefulWidget {
  const NewLecturerSearchButton({super.key});

  @override
  State<NewLecturerSearchButton> createState() =>
      _NewLecturerSearchButtonState();
}

class _NewLecturerSearchButtonState extends State<NewLecturerSearchButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: NewLecturerSearchDelegate(
                lecturers: state.schedulesIndex.values
                    .whereType<LecturerBase>()
                    .toList(),
                bloc: BlocProvider.of<LecturerPickedCubit>(context),
              ),
            );
          },
          icon: const Icon(
            Icons.search,
            size: 28,
          ),
        );
      },
    );
  }
}
