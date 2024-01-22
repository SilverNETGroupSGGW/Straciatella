import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_controller.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/day_dot.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/page_alignment_coefficient.dart';

final dateTimeNow = DateTime.now();
final today = DateTime(dateTimeNow.year, dateTimeNow.month, dateTimeNow.day);

class CalendarPagePicker extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    final fontSize = Theme.of(context).textTheme.bodyMedium!.fontSize!;
    const textExtraMargin = 6;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: preferredSize.height - fontSize - textExtraMargin,
          ),
          child: CalendarPageControler(
            controller: PageController(
              viewportFraction: 1 / (MediaQuery.of(context).size.width / 60),
            ),
            builder: (context, controller) => PageView.builder(
              physics: const BouncingScrollPhysics(),
              padEnds: false,
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
          constraints: BoxConstraints(maxHeight: fontSize + textExtraMargin),
          child: CalendarPageControler(
            builder: (context, controller) => PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padEnds: false,
              controller: controller,
              itemBuilder: (_, page) {
                final date = today.add(Duration(days: page));
                return PageAlignmentCoefficient(
                  pageController: controller,
                  page: page,
                  error: 0.1,
                  builder: (context, coefficient) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 2,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: DateFormat(
                              "EEEE ",
                              Localizations.localeOf(context).languageCode,
                            ).format(date).capitalize,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: DateFormat(
                              "d MMM y",
                              Localizations.localeOf(context).languageCode,
                            ).format(date),
                          ),
                        ],
                        style: TextStyle(
                          color: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .color!
                              .withOpacity(coefficient),
                        ),
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
