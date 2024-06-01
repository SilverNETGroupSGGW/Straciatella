part of 'lesson_data_tile.dart';

class _EventTimeSpan extends StatelessWidget {
  final DateTime startTime;
  final DateTime endTime;
  late final DateTime currentTime;
  _EventTimeSpan({
    required this.startTime,
    required this.endTime,
    DateTime? currentTime,
  }) {
    this.currentTime = currentTime ?? DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    final minutesSpan = endTime.difference(startTime).inMinutes;
    final minutesFromStart = currentTime.difference(startTime).inMinutes;
    final labelSmall = Theme.of(context).textTheme.labelSmall;
    final color = Theme.of(context).colorScheme.primary;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            TimeOfDay.fromDateTime(startTime).format(context),
            style: labelSmall,
          ),
        ),
        Expanded(
          child: RotatedBox(
            quarterTurns: 1,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(9999),
              value: (minutesFromStart / minutesSpan).clamp(0, 1),
            ),
          ).animate(
            onPlay: (c) {
              if (minutesFromStart.inBounds(0, minutesSpan)) {
                c.repeat();
              } else {
                c.stop();
              }
            },
          ).shimmer(
            duration: 800.ms,
            color: color,
            angle: pi / 2,
            size: 0.5,
            curve: Curves.fastOutSlowIn,
            stops: [0.2, 0.5, 0.8],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            TimeOfDay.fromDateTime(endTime).format(context),
            style: labelSmall,
          ),
        ),
      ],
    );
  }
}
