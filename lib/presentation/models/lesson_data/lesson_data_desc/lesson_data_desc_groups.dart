part of 'lesson_data_desc.dart';

class _EventGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = LessonDataProvider.of(context)!.event;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconText(
          Symbols.people_rounded,
          event.subject.groups.length > 1 ? "groups".tr() : "group".tr(),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Gap(4),
        Wrap(
          spacing: 2,
          runSpacing: 2,
          children: event.subject.groups.map((g) => GroupChip(g)).toList(),
        ),
      ],
    );
  }
}
