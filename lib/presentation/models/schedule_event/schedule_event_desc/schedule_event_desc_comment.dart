part of 'schedule_event_desc.dart';

class _EventComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = ScheduleEventProvider.of(context)!.event;

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
        Text(event.fromSubject.comment),
      ],
    );
  }
}
