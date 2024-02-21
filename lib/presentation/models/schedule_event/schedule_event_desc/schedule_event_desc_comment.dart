part of 'schedule_event_desc.dart';

class _EventComment extends StatelessWidget {
  final ScheduleEvent event;
  const _EventComment(this.event);

  @override
  Widget build(BuildContext context) {
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
