import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/presentation/screens/timetable/widgets/timetable_fab.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_picker.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_view.dart';
import 'package:silvertimetable/presentation/widgets/synced_page_view/synced_page_views.dart';
import 'package:silvertimetable/router.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final firstDay = DateTime.now().subtract(const Duration(days: 7));
    final lastDay = DateTime.now().add(const Duration(days: 14));

    return SyncedPageViews(
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
          bottom: CalendarPagePicker(
            firstDay: firstDay,
            lastDay: lastDay,
          ),
        ),
        floatingActionButton: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return !state.isFabHidden
                ? const TimetableFab()
                // Official way to hide FAB according to stackoverflow
                : const SizedBox.shrink();
          },
        ),
        body: CalendarPageView(
          firstDay: firstDay,
          lastDay: lastDay,
        ),
      ),
    );
  }
}
