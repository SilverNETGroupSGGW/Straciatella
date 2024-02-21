part of 'schedule_event_desc.dart';

class _EventLocation extends StatelessWidget {
  final ScheduleEvent event;
  const _EventLocation(this.event);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconText(
          Symbols.place,
          "location".tr(),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const Gap(4),
        Text(
          "b. ${event.fromSubject.classroom.building}, ${event.fromSubject.classroom.floor}/${event.fromSubject.classroom.name}",
        ),
        // if (!event.is_online! &&
        //     ROOMS_COORDS.keys.contains(event.room!.trim()) &&
        //     event.building!.trim() == "34")
      ],
    );
  }
}

class _EventNavFab extends StatelessWidget {
  final ScheduleEvent event;
  const _EventNavFab(this.event);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      icon: const Icon(Symbols.pin_drop_rounded),
      label: Text("show_on_map".tr()),
      backgroundColor: Colors.blue[900],
    );
  }
}
