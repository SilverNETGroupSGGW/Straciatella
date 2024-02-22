part of 'schedule_event_desc.dart';

class _EventLecturers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = ScheduleEventProvider.of(context)!.event;

    return Text(
      event.fromSubject.lecturers?.join(", ") ?? "",
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
