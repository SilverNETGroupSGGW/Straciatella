import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/presentation/screens/timetable/widgets/timetable_fab.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_cubit.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_picker.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_view.dart';
import 'package:silvertimetable/router.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarPageCubitProvider(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Timetable"),
          actions: [
            IconButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(RouteNames.settings),
              icon: const Icon(Icons.settings),
            ),
          ],
          bottom: CalendarPagePicker(),
        ),
        floatingActionButton: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return !state.isFabHidden
                ? const TimetableFab()
                // Official way to hide FAB according to stackoverflow
                : const SizedBox.shrink();
          },
        ),
        body: const CalendarPageView(),
      ),
    );
  }
}
