import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/filters_loading.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/add_new_filter_fab.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_filters_list.dart';

// ignore: must_be_immutable
class NewLecturerFilterScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NewLecturerFilterScreen({super.key});

  @override
  State<NewLecturerFilterScreen> createState() =>
      _NewLecturerFilterScreenState();
}

class _NewLecturerFilterScreenState extends State<NewLecturerFilterScreen> {
  late final LecturerPickedCubit lecturerPickedCubit;
  String? pickedLecturerId;

  @override
  void initState() {
    super.initState();
    lecturerPickedCubit = context.read<LecturerPickedCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LecturerPickedCubit, LecturerPickedState>(
      listener: (context, state) {
        setState(() {
          pickedLecturerId = state.lecturerPickedId;
        });
      },
      child: Scaffold(
        appBar: AppBar(title: Text('new_filter_title'.tr())),
        body: BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
          builder: (context, state) {
            if (state.lecturersOptionsTree == null) {
              return FiltersLoading();
            }

            if (state.refreshingIndex) {
              return Column(
                children: [
                  const LinearProgressIndicator(),
                  LecturerFiltersList(optionsTree: state.lecturersOptionsTree!),
                ],
              );
            }

            return LecturerFiltersList(
              optionsTree: state.lecturersOptionsTree!,
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: pickedLecturerId != null
            ? AddNewFilterFAB(pickedId: pickedLecturerId!)
            : null,
      ),
    );
  }
}
