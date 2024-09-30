part of 'lesson_data_desc.dart';

class _EventTimeSpanText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = LessonDataProvider.of(context)!.event;

    final start = TimeOfDay.fromDateTime(event.lesson.startTime);
    final end = TimeOfDay.fromDateTime(
      event.lesson.startTime.add(event.lesson.duration),
    );
    final duration = event.lesson.duration;

    return Column(
      children: [
        Text(
          "${duration.inHours}h ${duration.inMinutes % 60}min",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Symbols.timer,
              size: Theme.of(context).textTheme.titleMedium?.fontSize,
            ),
            const Gap(6),
            Text(
              start.format(context),
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const Gap(8),
            const Expanded(
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),
            const Gap(8),
            Text(
              end.format(context),
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ],
    );
  }
}
