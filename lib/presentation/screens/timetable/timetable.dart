import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/router.dart';

import 'widgets/timetable_fab.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(RouteNames.settings),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      floatingActionButton: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return !state.isFabHidden
              ? TimetableFab()
              // Official way to hide FAB according to stackoverflow
              : SizedBox.shrink();
        },
      ),
      body: Text("home screen"),
    );
  }
}
