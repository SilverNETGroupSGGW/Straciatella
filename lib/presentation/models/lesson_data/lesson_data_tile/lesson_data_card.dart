part of 'lesson_data_tile.dart';

class _EventCard extends StatelessWidget {
  final ScheduleViewMode mode;
  late final DateTime currentTime;
  _EventCard({
    this.mode = ScheduleViewMode.student,
    DateTime? currentTime,
  }) {
    this.currentTime = currentTime ?? DateTime.now();
  }

  double getElevation(LessonData event) {
    if (currentTime.isBefore(event.lesson.startTime)) {
      return 0;
    } else if (currentTime
        .isAfter(event.lesson.startTime.add(event.lesson.duration))) {
      return 2;
    } else {
      return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    final event = LessonDataProvider.of(context)!.event;
    final infoTextTheme = Theme.of(context).textTheme.labelMedium;

    return Card(
      elevation: getElevation(event),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => showModalBottomSheet(
          isScrollControlled: true,
          anchorPoint: Offset.zero,
          showDragHandle: true,
          context: context,
          builder: (_) => LessonDataDesc(lessonData: event),
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Theme.of(context)
                    .extension<ScheduleEventTheme>()!
                    .getColor(event.subject.type.name),
                width: 4,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0, left: 4),
                        child: Row(
                          children: [
                            Text(
                              event.subject.name.capitalize,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                      switch (mode) {
                        ScheduleViewMode.student => IconText(
                            Symbols.person_outline_rounded,
                            event.subject.lecturers
                                .map(
                                  (e) => "${e.firstName} ${e.surName}",
                                )
                                .join(
                                  ", ",
                                ),
                            style: infoTextTheme,
                          ),
                        ScheduleViewMode.lecturer => IconText(
                            Symbols.people_outline_rounded,
                            event.studyProgram
                                .toString(), // TODO: make pretty string for a studyprogram
                            style: infoTextTheme,
                          ),
                      },
                      IconText(
                        Symbols.place,
                        "b. ${event.subject.classroom.building}, ${event.subject.classroom.floor}/${event.subject.classroom.name}",
                        style: infoTextTheme,
                      ),
                    ],
                  ),
                ),
                Icon(
                  Symbols.priority_high,
                  fill: 1,
                  size: Theme.of(context).textTheme.bodyLarge?.fontSize,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// propsy do pokazania (tryb lecturera)
// * podstawowe informacje (co, gdzie, kiedy i z kim)
// fromSubject.name
// lesson.startTime, lesson.duration
// fromSubject.classroom, fromSubject.isRemote
// -----------
// event.fromSubject.schedule!.toPrettyString() **(tryb lecturera tylko)**
// fromSubject.lecturers **(tryb studenta tylko)**
// + warning od commenta
// + kropka/kreska reprezentująca typ zajęć

// * dodatkowe informacje
// fromSubject.lecturers
// fromSubject.groups
// fromSubject.comment
// fromSubject.type full name
