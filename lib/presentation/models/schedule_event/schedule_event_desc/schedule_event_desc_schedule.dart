part of 'schedule_event_desc.dart';

class _EventSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = ScheduleEventProvider.of(context)!.event;

    return Text(
      event.fromSubject.schedule?.toPrettyString() ?? "",
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
