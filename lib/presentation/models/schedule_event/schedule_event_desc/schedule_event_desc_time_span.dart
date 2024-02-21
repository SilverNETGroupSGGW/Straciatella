part of 'schedule_event_desc.dart';

class _EventTimeSpanText extends StatelessWidget {
  final ScheduleEvent event;
  const _EventTimeSpanText(this.event);

  @override
  Widget build(BuildContext context) {
    final start = TimeOfDay.fromDateTime(event.lesson.startTime);
    final endTime = event.lesson.startTime.add(event.lesson.duration);
    final end = TimeOfDay.fromDateTime(endTime);

    final eventTimeSpan = endTime.difference(event.lesson.startTime);

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "${start.format(context)} - ${end.format(context)}",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const TextSpan(text: "  "),
          TextSpan(
            text: "(${eventTimeSpan.inHours}:${eventTimeSpan.inMinutes % 60})",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
