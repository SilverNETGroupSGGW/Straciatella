part of 'lesson_data_desc.dart';

class _EventComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = LessonDataProvider.of(context)!.event;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconText(
          Symbols.comment_rounded,
          "comment".tr(),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Gap(4),
        Text(event.subject.comment),
      ],
    );
  }
}
