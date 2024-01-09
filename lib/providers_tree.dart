import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/faved_schedules/faved_schedules_cubit.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

class ProvidersTree extends StatefulWidget {
  final SettingsCubit settingsCubit;
  final Widget child;
  const ProvidersTree({
    super.key,
    required this.settingsCubit,
    required this.child,
  });

  @override
  State<ProvidersTree> createState() => _ProvidersTreeState();
}

class _ProvidersTreeState extends State<ProvidersTree> {
  final _scheduleManager = ScheduleManagerBloc()
    ..add(const ScheduleManagerEvent.init());

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsCubit>.value(
      value: widget.settingsCubit,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                FavedSchedulesCubit(_scheduleManager)..loadFavedSchedules(),
          ),
          BlocProvider.value(
            value: _scheduleManager,
          ),
        ],
        child: widget.child,
      ),
    );
  }
}
