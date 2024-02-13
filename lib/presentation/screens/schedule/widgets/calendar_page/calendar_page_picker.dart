import 'package:flutter/material.dart';
import 'package:silvertimetable/helpers.dart';
import 'package:silvertimetable/presentation/widgets/synced_page_view/synced_page_view.dart';

typedef DayBuilder = Widget Function(
  BuildContext context,
  PageController controller,
  DateTime day,
  int page,
);

class CalendarPagePicker extends StatelessWidget
    implements PreferredSizeWidget {
  late final DateTime firstDay;
  late final DateTime lastDay;
  final double height;
  final DayBuilder dayBuilder;
  final DayBuilder dayLabelBuilder;

  CalendarPagePicker({
    super.key,
    required DateTime firstDay,
    required DateTime lastDay,
    required this.dayBuilder,
    required this.dayLabelBuilder,
    this.height = 60,
  }) {
    this.firstDay = DateUtils.dateOnly(firstDay);
    this.lastDay = DateUtils.dateOnly(lastDay);
    assert(
      this.firstDay.isBefore(this.lastDay) || this.firstDay == this.lastDay,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);

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
              itemBuilder: (context, page) {
                final currentDay =
                    DateUtils.dateOnly(firstDay.add(Duration(days: page)));
                if (page >= pagesCount) return Container(); // dummy Container

                return GestureDetector(
                  onTap: () => controller.page!.round() == page
                      ? _onSelectDay(context, controller, currentDay)
                      : _animateToPage(controller, page),
                  child: dayBuilder(context, controller, currentDay, page),
                );
              },
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
              itemBuilder: (context, page) {
                final currentDay =
                    DateUtils.dateOnly(firstDay.add(Duration(days: page)));

                return dayLabelBuilder(
                  context,
                  controller,
                  currentDay,
                  page,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

// BlocBuilder<ScheduleEventsCubit, ScheduleEventsState>(
//   buildWhen: (previous, current) =>
//       previous.events[currentDay] !=
//       current.events[currentDay],
//   builder: (context, state) {
//     return DayDot(
//       date: currentDay,
//       t: coefficient,
//       onTap: () => coefficient > 0
//           ? _onSelectDay(
//               context,
//               controller,
//               currentDay,
//             )
//           : _animateToPage(controller, page),
//       hasEvents: state.events.containsKey(currentDay),
//     );
//   },
// )

// BlocBuilder<ScheduleEventsCubit, ScheduleEventsState>(
//   buildWhen: (previous, current) =>
//       previous.events[currentDay] !=
//       current.events[currentDay],
//   builder: (context, state) {
//     return DayDotLabel(
//       date: currentDay,
//       t: coefficient,
//       hasEvents: state.events.containsKey(currentDay),
//     );
//   },
// )
