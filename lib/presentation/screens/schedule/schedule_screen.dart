import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';
import 'package:silvertimetable/data/models/schedule_event/schedule_event.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';
import 'package:silvertimetable/data/repositories/sggw_hub_repo.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen_base.dart';

// zrobić cubita od loaded schedule gdzie można opdalić refresh do cache i do api
// state cubita: events, schedule, isFromCache
// typy stanów: loading, loaded, initial, error

// dependecy na schedule managerze by nasłuchiwać zmian w cachu

class ScheduleScreen extends StatefulWidget {
  final ScheduleKey? scheduleKey;

  const ScheduleScreen({
    super.key,
    this.scheduleKey,
  });

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  Map<DateTime, List<ScheduleEvent>> events = {};
  late String scheduleName = widget.scheduleKey?.id ?? "";

  void setEvents(List<Subject> subjects) {
    setState(() {
      events = ScheduleEvent.groupByDay(
        ScheduleEvent.getSortedEventsFromSubjects(subjects),
      );
    });
  }

  void setName(String name) {
    setState(() {
      scheduleName = name;
    });
  }

  Future refreshEvents() {
    if (widget.scheduleKey?.type == ScheduleType.schedule) {
      return SggwHubRepo().getSchedule(widget.scheduleKey!.id).then((value) {
        setEvents(value.subjects);
        setName(value.name);
      });
    } else if (widget.scheduleKey?.type == ScheduleType.lecturer) {
      return SggwHubRepo().getLecturer(widget.scheduleKey!.id).then((value) {
        setEvents(value.subjects);
        setName("${value.firstName} ${value.surname}");
      });
    }
    return Future.value();
  }

  @override
  void initState() {
    super.initState();
    final cachedSchedule =
        context.read<ScheduleManagerBloc>().state.schedules[widget.scheduleKey];
    if (cachedSchedule == null) {
      // fetch from api
      refreshEvents();
    } else {
      // is in cache
      if (cachedSchedule is Schedule) {
        setEvents(cachedSchedule.subjects);
      } else if (cachedSchedule is Lecturer) {
        setEvents(cachedSchedule.subjects);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScheduleScreenBase(
      mode: ScheduleViewMode.student,
      events: events,
      title: Text(scheduleName),
    );
  }
}
