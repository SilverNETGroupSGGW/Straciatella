import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_controller.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/day_dot.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/page_alignment_coefficient.dart';

final dateTimeNow = DateTime.now();
final today = DateTime(dateTimeNow.year, dateTimeNow.month, dateTimeNow.day);

class CalendarPagePicker extends StatelessWidget
    implements PreferredSizeWidget {
  const CalendarPagePicker({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    final fontSize = Theme.of(context).textTheme.bodyMedium!.fontSize!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: preferredSize.height - fontSize - 5),
          child: CalendarPageControler(
            controller: PageController(
              viewportFraction: 1 / (MediaQuery.of(context).size.width / 60),
            ),
            builder: (context, controller) => PageView.builder(
              controller: controller,
              itemBuilder: (_, page) => Center(
                child: PageAlignmentCoefficient(
                  pageController: controller,
                  page: page,
                  error: 0.8,
                  builder: (context, coefficient) => DayDot(
                    date: today.add(Duration(days: page)),
                    t: coefficient,
                    onTap: () => controller.animateToPage(
                      page,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: fontSize + 5),
          child: CalendarPageControler(
            builder: (context, controller) => PageView.builder(
              controller: controller,
              itemBuilder: (_, page) {
                final date = today.add(Duration(days: page));
                return Center(
                  child: PageAlignmentCoefficient(
                    pageController: controller,
                    page: page,
                    error: 0.1,
                    builder: (context, coefficient) => Text(
                      "${date.weekday}, ${date.day} ${date.month} ${date.year}",
                      style: TextStyle(
                        color: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .color!
                            .withOpacity(coefficient),
                      ),
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
