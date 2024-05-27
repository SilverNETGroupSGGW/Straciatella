part of 'schedule_event_desc.dart';

class _EventTimeSpanText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = ScheduleEventProvider.of(context)!.event;

    final start = TimeOfDay.fromDateTime(event.lesson.startTime);
    final end = TimeOfDay.fromDateTime(
      event.lesson.startTime.add(event.lesson.duration),
    );
    final duration = event.lesson.duration;

    return Row(
      children: [
        Icon(
          Symbols.timer,
          size: Theme.of(context).textTheme.titleSmall?.fontSize,
        ),
        const Gap(8),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "${start.format(context)} - ${end.format(context)}",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const TextSpan(text: "  "),
              TextSpan(
                text: "(${duration.inHours}:${duration.inMinutes % 60})",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
