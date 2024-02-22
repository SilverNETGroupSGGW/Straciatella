part of 'schedule_event_desc.dart';

class _EventType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = ScheduleEventProvider.of(context)!.event;

    return Text(
      event.fromSubject.type.tr(),
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Theme.of(context)
                .extension<ScheduleEventTheme>()!
                .getColor(event.fromSubject.type),
          ),
    );
  }
}
