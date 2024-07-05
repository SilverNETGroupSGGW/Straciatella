part of 'lesson_data_desc.dart';

class _EventType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = LessonDataProvider.of(context)!.event;

    return Text(
      event.subject.type.name.tr(),
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Theme.of(context)
                .extension<ScheduleEventTheme>()!
                .getColor(event.subject.type.name),
          ),
    );
  }
}
