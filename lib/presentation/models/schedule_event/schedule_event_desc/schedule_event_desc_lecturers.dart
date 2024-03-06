part of 'schedule_event_desc.dart';

class _EventLecturers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = ScheduleEventProvider.of(context)!.event;

    return Section(
      icon: Symbols.person,
      title: "lecturers".tr(),
      content: event.fromSubject.lecturers?.isEmpty ?? true
          ? const Text("no lecturers")
          : Wrap(
              spacing: 2,
              runSpacing: 2,
              children: event.fromSubject.lecturers!
                  .map((e) => LecturerChip(e))
                  .toList(),
            ),
    );
  }
}
