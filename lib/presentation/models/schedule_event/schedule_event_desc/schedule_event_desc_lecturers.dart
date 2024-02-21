part of 'schedule_event_desc.dart';

class _EventLecturers extends StatelessWidget {
  final ScheduleEvent event;
  const _EventLecturers(this.event);

  @override
  Widget build(BuildContext context) {
    return Text(
      event.fromSubject.lecturers?.join(", ") ?? "",
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
