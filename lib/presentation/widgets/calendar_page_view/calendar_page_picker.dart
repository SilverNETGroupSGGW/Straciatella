import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/helpers.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_controller.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/day_dot.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/page_alignment_coefficient.dart';

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

  @override
  Widget build(BuildContext context) {
    final fontSize = Theme.of(context).textTheme.bodyMedium!.fontSize!;
    const textExtraMargin = 6;
    final dateLabelHeight = fontSize + textExtraMargin;
    final dotsHeight = preferredSize.height - dateLabelHeight;
    final viewportFraction =
        preferredSize.height / MediaQuery.of(context).size.width;

    final pagesCount = lastDay.difference(firstDay).inDays + 1;
    final initialPage =
        today().difference(firstDay).inDays.clamp(0, pagesCount - 1);

    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: dotsHeight,
          ),
          child: CalendarPageControler(
            controller: PageController(
              viewportFraction: viewportFraction,
              initialPage: initialPage,
            ),
            builder: (context, controller) => PageView.builder(
              physics: const BouncingScrollPhysics(),
              padEnds: false,
              controller: controller,
              itemCount: pagesCount,
              itemBuilder: (_, page) => Center(
                child: PageAlignmentCoefficient(
                  pageController: controller,
                  page: page,
                  error: 0.8,
                  builder: (context, coefficient) => DayDot(
                    date: firstDay.add(Duration(days: page)),
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
          constraints: BoxConstraints(
            maxHeight: dateLabelHeight,
          ),
          child: CalendarPageControler(
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
                    child: _DateLabel(
                      date: firstDay.add(Duration(days: page)),
                      opacity: coefficient,
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

class _DateLabel extends StatelessWidget {
  final DateTime date;
  final double opacity;

  const _DateLabel({
    required this.date,
    required this.opacity,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
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
              .withOpacity(opacity),
        ),
      ),
    );
  }
}
