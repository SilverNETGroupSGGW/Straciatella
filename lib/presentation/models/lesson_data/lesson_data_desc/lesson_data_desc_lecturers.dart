part of 'lesson_data_desc.dart';

class _EventLecturers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = LessonDataProvider.of(context)!.event;

    return Column(
      children: [
        IconText(
          Symbols.person,
          "lecturers".tr(),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        if (event.subject.lecturers.isEmpty)
          Text("no_lecturers".tr())
        else
          Column(
            children: [
              ...event.subject.lecturers.map(
                (Lecturer l) => ListTile(
                  title: Text("${l.firstName} ${l.surName}"),
                  subtitle: Text(l.academicDegree.capitalize),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
