part of 'lesson_data_desc.dart';

class _EventComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = LessonDataProvider.of(context)!.event;

    return Card(
      color: Theme.of(context).colorScheme.tertiaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconText(
              Symbols.priority_high,
              "comment".tr(),
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const Gap(4),
            Text(event.subject.comment),
          ],
        ),
      ),
    );
  }
}
