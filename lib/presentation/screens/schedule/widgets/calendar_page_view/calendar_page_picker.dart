import 'package:flutter/material.dart';
import 'package:silvertimetable/helpers.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page_view/day_dot.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page_view/day_dot_label.dart';
import 'package:silvertimetable/presentation/widgets/page_alignment_coefficient.dart';
import 'package:silvertimetable/presentation/widgets/synced_page_view/synced_page_view.dart';

class CalendarPagePicker extends StatelessWidget
    implements PreferredSizeWidget {
  late final DateTime firstDay;
  late final DateTime lastDay;

  CalendarPagePicker({
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
  Size get preferredSize => const Size.fromHeight(60);

  Future<void> _animateToPage(PageController controller, int page) {
    return controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  Future _onSelectDay(
    BuildContext context,
    PageController controller,
    DateTime initialDate,
  ) {
    return showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDay,
      lastDate: lastDay,
    ).then((day) async {
      if (day != null) {
        await _animateToPage(
          controller,
          day.difference(firstDay).inDays,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final fontSize = Theme.of(context).textTheme.bodyMedium!.fontSize!;
    const textExtraMargin = 6;
    final dateLabelHeight = fontSize + textExtraMargin;
    final dotsHeight = preferredSize.height - dateLabelHeight;
    final viewportFraction =
        preferredSize.height / MediaQuery.of(context).size.width;

    final extraDummyPagesForDots = (1 / viewportFraction).ceil();

    final pagesCount = lastDay.difference(firstDay).inDays + 1;
    final initialPage =
        today().difference(firstDay).inDays.clamp(0, pagesCount - 1);

    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: dotsHeight,
          ),
          child: SyncedPageView(
            controller: PageController(
              viewportFraction: viewportFraction,
              initialPage: initialPage,
            ),
            builder: (context, controller) => PageView.builder(
              physics: const BouncingScrollPhysics(),
              padEnds: false,
              controller: controller,
              itemCount: pagesCount + extraDummyPagesForDots,
              onPageChanged: (page) {
                // Just to restrict scrolling to the dummy extra containers
                // this makes animation really weird, not like BouncingScrollPhysics
                if (page >= pagesCount) {
                  _animateToPage(controller, pagesCount - 1);
                }
              },
              itemBuilder: (_, page) => Center(
                child: PageAlignmentCoefficient(
                  pageController: controller,
                  page: page,
                  error: 0.8,
                  builder: (context, coefficient) {
                    final currentDay = firstDay.add(Duration(days: page));
                    return page < pagesCount
                        ? DayDot(
                            date: currentDay,
                            t: coefficient,
                            onTap: () => coefficient > 0
                                ? _onSelectDay(context, controller, currentDay)
                                : _animateToPage(controller, page),
                          )
                        : Container(); // dummy container
                  },
                ),
              ),
            ),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: dateLabelHeight,
          ),
          child: SyncedPageView(
            controller: PageController(
              initialPage: initialPage,
            ),
            builder: (context, controller) => PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padEnds: false,
              controller: controller,
              itemCount: pagesCount,
              itemBuilder: (_, page) {
                return PageAlignmentCoefficient(
                  pageController: controller,
                  page: page,
                  error: 0.1,
                  builder: (context, coefficient) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 2,
                    ),
                    child: DayDotLabel(
                      date: firstDay.add(Duration(days: page)),
                      t: coefficient,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
