import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/filters_loading.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/widgets/schedule_bottom_app_bar.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/widgets/schedule_filters_list.dart';

// ignore: must_be_immutable
class NewScheduleFilterScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NewScheduleFilterScreen({super.key});

  @override
  State<NewScheduleFilterScreen> createState() =>
      _NewScheduleFilterScreenState();
}

class _NewScheduleFilterScreenState extends State<NewScheduleFilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('new_filter_title'.tr())),
      bottomNavigationBar: ScheduleBottomAppBar(),
      body: BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
        builder: (context, state) {
          if (state.schedulesOptionsTree == null) {
            return FiltersLoading();
          }

          if (state.refreshingIndex) {
            return const Column(
              children: [
                LinearProgressIndicator(),
                Spacer(),
                ScheduleFiltersList(),
              ],
            );
          }

          return const ScheduleFiltersList();
        },
      ),
    );
  }
}
