part of 'schedule_event_desc.dart';

class _EventName extends StatelessWidget {
  final ScheduleEvent event;
  const _EventName(this.event);

  @override
  Widget build(BuildContext context) {
    return Text(
      event.fromSubject.name.capitalize,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
