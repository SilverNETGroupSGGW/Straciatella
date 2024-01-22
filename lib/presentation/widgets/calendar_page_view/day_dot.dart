import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_picker.dart';

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

  // TODO: get colors from theme
  Color _getWeekdayColor() => switch (date.weekday) {
        < 5 => Colors.white,
        6 => Colors.white70,
        7 => Colors.red[300]!,
        _ => Colors.white,
      };

  double _getOpacity() => switch ((hasEvents, date.isBefore(today))) {
        (_, true) => 0.1,
        (false, false) => 0.3,
        (true, false) => 1,
      };

  @override
  Widget build(BuildContext context) {
    final opacity = _getOpacity();
    final weekdayColor = _getWeekdayColor();
    final textColor = Color.lerp(Colors.black, weekdayColor, 1 - t)!;
    final dotColor = weekdayColor.withOpacity(t);

    // TODO: tapnięcie obok tekstu gdy nie ma Containera nie trigerruje onTap
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          LayoutBuilder(
            builder: (context, constrains) {
              return Container(
                decoration: BoxDecoration(
                  color: dotColor.withOpacity(dotColor.opacity * opacity),
                  borderRadius: BorderRadius.circular(double.maxFinite),
                ),
                width: t * constrains.maxHeight,
                height: t * constrains.maxHeight,
              );
            },
          ),
          Text(
            date.day.toString(),
            style: TextStyle(
              color: textColor.withOpacity(textColor.opacity * opacity),
            ),
          ),
        ],
      ),
    );
  }
}
