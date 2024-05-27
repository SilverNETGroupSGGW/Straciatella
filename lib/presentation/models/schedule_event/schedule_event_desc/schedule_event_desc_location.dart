part of 'schedule_event_desc.dart';

class _EventLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = ScheduleEventProvider.of(context)!.event;

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
          "b. ${event.subject.classroom.building}, ${event.subject.classroom.floor}/${event.subject.classroom.name}",
        ),
        // if (!event.is_online! &&
        //     ROOMS_COORDS.keys.contains(event.room!.trim()) &&
        //     event.building!.trim() == "34")
      ],
    );
  }
}

class _EventNavFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final event = ScheduleEventProvider.of(context)!.event;

    return FloatingActionButton.extended(
      onPressed: () {},
      icon: const Icon(Symbols.pin_drop_rounded),
      label: Text("show_on_map".tr()),
      backgroundColor: Colors.blue[900],
    );
  }
}
