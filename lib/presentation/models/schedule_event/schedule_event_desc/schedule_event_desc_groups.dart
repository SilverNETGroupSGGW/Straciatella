part of 'schedule_event_desc.dart';

class _EventGroups extends StatelessWidget {
  final ScheduleEvent event;
  const _EventGroups(this.event);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconText(
          Symbols.people_rounded,
          event.fromSubject.groups.length > 1 ? "groups".tr() : "group".tr(),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Gap(4),
        Text(event.fromSubject.groups.join(", ")),
      ],
    );
  }
}
