import 'package:flutter/material.dart';
import 'package:silvertimetable/themes/extensions/day_dot_theme.dart';

class DayDot extends StatelessWidget {
  final DateTime day;
  // t=1 full dot, t=0 only day number
  final double t;
  final bool hasEvents;

  const DayDot({
    super.key,
    required this.day,
    required this.t,
    this.hasEvents = true,
  });

  @override
  Widget build(BuildContext context) {
    final dayDotTheme = Theme.of(context).extension<DayDotTheme>()!;
    final (Color bgColor, Color textColor) =
        dayDotTheme.getByWeekdayColor(day.weekday);

    final textColorLerp = Color.lerp(bgColor, textColor, t)!;
    final opacity = dayDotTheme.getOpacity(hasEvents, day);

    return Opacity(
      opacity: opacity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          LayoutBuilder(
            builder: (context, constrains) {
              return Container(
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(99999),
                ),
                width: t * constrains.maxHeight,
                height: t * constrains.maxHeight,
              );
            },
          ),
          Text(
            day.day.toString(),
            style: TextStyle(
              color: textColorLerp,
              fontWeight: FontWeight.lerp(
                FontWeight.normal,
                FontWeight.bold,
                t,
              ),
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
