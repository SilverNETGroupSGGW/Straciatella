part of 'schedule_event_desc.dart';

class _EventSchedule extends StatelessWidget {
  final ScheduleEvent event;
  const _EventSchedule(this.event);

  @override
  Widget build(BuildContext context) {
    return Text(
      event.fromSubject.schedule?.toPrettyString() ?? "",
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
