part of 'schedule_event_desc.dart';

class Section extends StatelessWidget {
  final Widget content;
  final IconData icon;
  final String title;
  const Section({
    super.key,
    required this.icon,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconText(
          icon,
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Gap(4),
        content,
      ],
    );
  }
}
