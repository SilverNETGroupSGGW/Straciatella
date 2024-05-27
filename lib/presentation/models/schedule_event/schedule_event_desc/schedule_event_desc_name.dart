part of 'schedule_event_desc.dart';

class _EventName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = ScheduleEventProvider.of(context)!.event;

    return Text(
      event.subject.name.capitalize,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
