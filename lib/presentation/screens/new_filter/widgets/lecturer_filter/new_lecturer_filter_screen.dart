import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/filters_loading.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_bottom_app_bar.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_filters_list.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_text_field.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: LecturerTextField(),
      ),
      body: BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
        builder: (context, state) {
          if (state.schedulesIndex.isEmpty) {
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
      bottomNavigationBar: LecturerBottomAppBar(),
    );
  }
}
