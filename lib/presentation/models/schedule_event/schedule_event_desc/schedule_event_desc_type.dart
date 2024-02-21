part of 'schedule_event_desc.dart';

class _EventType extends StatelessWidget {
  final ScheduleEvent event;
  const _EventType(this.event);

  @override
  Widget build(BuildContext context) {
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
