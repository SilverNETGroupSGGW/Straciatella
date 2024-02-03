import 'package:flutter/material.dart';
import 'package:silvertimetable/themes/extensions/day_dot_theme.dart';

class DayDot extends StatelessWidget {
  final DateTime date;
  // t=1 full dot, t=0 only day number
  final double t;
  final bool hasEvents;
  final void Function() onTap;

  const DayDot({
    super.key,
    required this.date,
    required this.t,
    this.hasEvents = true,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dayDotTheme = Theme.of(context).extension<DayDotTheme>()!;
    final (Color bgColor, Color textColor) =
        dayDotTheme.getByWeekdayColor(date.weekday);

    final textColorLerp = Color.lerp(bgColor, textColor, t)!;
    final opacity = dayDotTheme.getOpacity(hasEvents, date);

    // TODO: tapnięcie obok tekstu gdy nie ma Containera nie trigerruje onTap
    return Opacity(
      opacity: opacity,
      child: GestureDetector(
        onTap: onTap,
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
              date.day.toString(),
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
      ),
    );
  }
}
