import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/themes/extensions/day_dot_theme.dart';

class DayDotLabel extends StatelessWidget {
  final DateTime date;
  final bool hasEvents;
  final double t;

  const DayDotLabel({
    required this.date,
    required this.t,
    this.hasEvents = true,
  });

  @override
  Widget build(BuildContext context) {
    final dayDotTheme = Theme.of(context).extension<DayDotTheme>()!;
    final (Color mainColor, _) = dayDotTheme.getByWeekdayColor(date.weekday);
    final opacity = dayDotTheme.getOpacity(hasEvents, date);

    final weekdayTextColor = mainColor.withOpacity(opacity);
    final textColor =
        Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(opacity);

    return Opacity(
      opacity: t,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: DateFormat(
                "EEEE ",
                Localizations.localeOf(context).languageCode,
              ).format(date).capitalize,
              style: TextStyle(
                color: weekdayTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: DateFormat(
                "d MMM y",
                Localizations.localeOf(context).languageCode,
              ).format(date),
            ),
          ],
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
