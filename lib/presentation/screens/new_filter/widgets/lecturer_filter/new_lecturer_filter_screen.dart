import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/filters_loading.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/add_new_filter_fab.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_filters_list.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/search/new_lecturer_search_button.dart';

// ignore: must_be_immutable
class NewLecturerFilterScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NewLecturerFilterScreen({super.key});

  @override
  State<NewLecturerFilterScreen> createState() =>
      _NewLecturerFilterScreenState();
}

class _NewLecturerFilterScreenState extends State<NewLecturerFilterScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LecturerPickedCubit, LecturerPickedState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('new_filter_title'.tr()),
            actions: const [NewLecturerSearchButton()],
          ),
          body: BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
            builder: (context, state) {
              if (state.lecturersOptionsTree == null) {
                return FiltersLoading();
              }
              if (state.refreshingIndex) {
                return const Stack(
                  children: [
                    LinearProgressIndicator(),
                    LecturerFiltersList(),
                  ],
                );
              }
              return const LecturerFiltersList();
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton:
              state.lecturerPicked != null ? const AddNewFilterFAB() : null,
        );
      },
    );
  }
}
