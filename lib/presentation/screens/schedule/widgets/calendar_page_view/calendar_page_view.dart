import 'package:flutter/material.dart';
import 'package:silvertimetable/helpers.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page_view/calendar_page_picker.dart';
import 'package:silvertimetable/presentation/widgets/synced_page_view/synced_page_view.dart';

class CalendarPageView extends StatelessWidget {
  late final DateTime firstDay;
  late final DateTime lastDay;
  final DayBuilder dayBuilder;

  CalendarPageView({
    super.key,
    required DateTime firstDay,
    required DateTime lastDay,
    required this.dayBuilder,
  }) {
    this.firstDay = DateTime(firstDay.year, firstDay.month, firstDay.day);
    this.lastDay = DateTime(lastDay.year, lastDay.month, lastDay.day);
    assert(
      this.firstDay.isBefore(this.lastDay) || this.firstDay == this.lastDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    final pagesCount = lastDay.difference(firstDay).inDays + 1;
    final initialPage =
        today().difference(firstDay).inDays.clamp(0, pagesCount - 1);

    return SyncedPageView(
      controller: PageController(
        initialPage: initialPage,
      ),
      builder: (context, controller) => PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: pagesCount,
        itemBuilder: (context, page) => dayBuilder(
          context,
          controller,
          firstDay.add(Duration(days: page)),
          page,
        ),
      ),
    );
  }
}
