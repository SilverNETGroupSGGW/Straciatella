part of 'lesson_data_desc.dart';

class _EventLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = LessonDataProvider.of(context)!.event;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconText(
          Symbols.place,
          "${"location".tr()}: ",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          "b. ${event.subject.classroom.building}, ${event.subject.classroom.floor}/${event.subject.classroom.name}",
          style: Theme.of(context).textTheme.bodyLarge,
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
    // final event = LessonDataProvider.of(context)!.event;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: FilledButton.icon(
        onPressed: () {},
        icon: const Icon(Symbols.directions_walk),
        label: Text("navigate".tr()),
      ),
    );
  }
}
