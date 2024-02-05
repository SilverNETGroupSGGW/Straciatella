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
    this.firstDay = DateUtils.dateOnly(firstDay);
    this.lastDay = DateUtils.dateOnly(lastDay);
    assert(
      this.firstDay.isBefore(this.lastDay) || this.firstDay == this.lastDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    final pagesCount = lastDay.difference(firstDay).inDays + 2;
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
          DateUtils.dateOnly(firstDay.add(Duration(days: page))),
          page,
        ),
      ),
    );
  }
}
