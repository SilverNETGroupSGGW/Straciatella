import 'package:flutter/material.dart';
import 'package:silvertimetable/helpers.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_controller.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/page_alignment_coefficient.dart';

class CalendarPageView extends StatelessWidget {
  late final DateTime firstDay;
  late final DateTime lastDay;

  CalendarPageView({
    super.key,
    required DateTime firstDay,
    required DateTime lastDay,
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

    return CalendarPageControler(
      controller: PageController(
        initialPage: initialPage,
      ),
      builder: (context, controller) => PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: pagesCount,
        itemBuilder: (_, page) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("View: $page"),
              PageAlignmentCoefficient(
                pageController: controller,
                page: page,
                error: 0.1,
                builder: (context, coefficient) => coefficient > 0
                    ? const Text(
                        "IS ALIGNED",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : const Text(
                        "NOT ALIGNED",
                        style: TextStyle(color: Colors.red),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
