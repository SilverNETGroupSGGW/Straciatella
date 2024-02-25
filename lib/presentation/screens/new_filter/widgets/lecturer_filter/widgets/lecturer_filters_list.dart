import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_tile.dart';

// ignore: must_be_immutable
class LecturerFiltersList extends StatefulWidget {
  const LecturerFiltersList({super.key});

  @override
  State<LecturerFiltersList> createState() => _LecturerFiltersListState();
}

class _LecturerFiltersListState extends State<LecturerFiltersList> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      builder: (context, state) {
        final List<LecturerBase> lecturers =
            state.schedulesIndex.values.whereType<LecturerBase>().toList();

        return BlocBuilder<LecturerPickedCubit, LecturerPickedState>(
          builder: (context, state) {
            final int lecturerIndex = lecturers.indexWhere(
              (element) => element.id == state.lecturerPicked?.id,
            );

            if (lecturerIndex != -1 /* &&  TODO: nie jest widoczny */) {
              itemScrollController.scrollTo(
                index: lecturerIndex,
                duration: const Duration(milliseconds: 200),
              );
            }

            return ScrollablePositionedList.builder(
              itemScrollController: itemScrollController,
              itemCount: lecturers.length + 1,
              itemBuilder: (context, index) => index == lecturers.length
                  ? const SizedBox(height: 90)
                  : LecturerTile(
                      lecturer: lecturers[index],
                    ),
            );
          },
        );
      },
    );
  }
}
