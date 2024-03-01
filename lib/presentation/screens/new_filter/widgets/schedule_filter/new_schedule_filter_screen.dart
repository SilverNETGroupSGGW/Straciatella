import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/filters_loading.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/widgets/schedule_bottom_app_bar.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/widgets/schedule_filters_list.dart';

class NewScheduleFilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text('new_filter_title'.tr())),
          body: state.schedulesOptionsTree == null
              ? FiltersLoading()
              : state.refreshingIndex
                  ? const Column(
                      children: [
                        LinearProgressIndicator(),
                        Spacer(),
                        ScheduleFiltersList(),
                      ],
                    )
                  : const ScheduleFiltersList(),
          bottomNavigationBar: state.schedulesOptionsTree != null
              ? ScheduleBottomAppBar()
              : null,
        );
      },
    );
  }
}
