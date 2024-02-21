import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/schedule_event/schedule_event.dart';
import 'package:silvertimetable/presentation/widgets/icon_text.dart';
import 'package:silvertimetable/themes/extensions/schedule_event_theme.dart';

part 'schedule_event_desc_comment.dart';
part 'schedule_event_desc_groups.dart';
part 'schedule_event_desc_lecturers.dart';
part 'schedule_event_desc_location.dart';
part 'schedule_event_desc_name.dart';
part 'schedule_event_desc_schedule.dart';
part 'schedule_event_desc_time_span.dart';
part 'schedule_event_desc_type.dart';

class ScheduleEventDesc extends StatelessWidget {
  final ScheduleEvent scheduleEvent;
  const ScheduleEventDesc({
    super.key,
    required this.scheduleEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, left: 12, right: 12, bottom: 12),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _EventName(scheduleEvent),
                  ),
                  const Gap(10),
                  _EventType(scheduleEvent),
                ],
              ),
              const Divider(),
              _EventTimeSpanText(scheduleEvent),
              _EventLecturers(scheduleEvent),
              _EventSchedule(scheduleEvent),
              const Gap(8),
              _EventGroups(scheduleEvent),
              if (scheduleEvent.fromSubject.comment.isNotEmpty) ...[
                const Gap(8),
                _EventComment(scheduleEvent),
              ],
              const Gap(8),
              _EventLocation(scheduleEvent),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: _EventNavFab(scheduleEvent),
          ),
        ],
      ),
    );
  }
}
