part of 'schedule_event_tile.dart';

class _EventCard extends StatelessWidget {
  final ScheduleViewMode mode;
  final ScheduleEvent event;
  late final DateTime currentTime;
  _EventCard({
    required this.event,
    this.mode = ScheduleViewMode.student,
    DateTime? currentTime,
  }) {
    this.currentTime = currentTime ?? DateTime.now();
  }

  double get elevation {
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
    final labelLarge = Theme.of(context).textTheme.labelLarge;

    Widget iconText(IconData icon, String text) {
      return Row(
        children: [
          Icon(
            icon,
            fill: 1,
            size: labelLarge?.fontSize,
          ),
          const Gap(8),
          Text(
            text,
            style: labelLarge,
          ),
        ],
      );
    }

    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.orange, width: 3),
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
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            Text(
                              "Analiza Matematyczna",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                      switch (mode) {
                        ScheduleViewMode.student => iconText(
                            Symbols.person_outline_rounded,
                            "Adam Nowak",
                          ),
                        ScheduleViewMode.lecturer => iconText(
                            Symbols.people_outline_rounded,
                            "WZIM Informatyka inż. sem. 1 stac. gr: ISI1, ISI2",
                          ),
                      },
                      iconText(Symbols.place, "3/77 b. 34"),
                    ],
                  ),
                ),
                Icon(
                  Symbols.comment_rounded,
                  fill: 1,
                  size: Theme.of(context).textTheme.bodyMedium?.fontSize,
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


// return Center(
//   child: GestureDetector(
//     onTap: () {
//       setState(() {
//         selected = !selected;
//       });
//     },
//     child: FittedBox(
//       child: AnimatedSwitcher(
//         transitionBuilder: (widget, anim) {
//           return FadeTransition(
//             opacity: anim,
//             child: SizeTransition(
//               sizeFactor: anim,
//               child: widget,
//             ),
//           );
//         },
//         duration: const Duration(milliseconds: 200),
//         child: selected ? Text("hr") : FlutterLogo(size: 75),
//       ),
//     ),
//   ),
// );
