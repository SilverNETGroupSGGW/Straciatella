import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/lesson_data/lesson_data.dart';
import 'package:silvertimetable/presentation/models/group/group_chip.dart';
import 'package:silvertimetable/presentation/models/lecturer/lecturer_chip.dart';
import 'package:silvertimetable/presentation/models/schedule_event/schedule_event_provider.dart';
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
part 'section.dart';

class ScheduleEventDesc extends StatelessWidget {
  final LessonData scheduleEvent;
  const ScheduleEventDesc({
    super.key,
    required this.scheduleEvent,
  });

  @override
  Widget build(BuildContext context) {
    return ScheduleEventProvider(
      scheduleEvent,
      child: Padding(
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
                      child: _EventName(),
                    ),
                    const Gap(10),
                    _EventType(),
                  ],
                ),
                const Divider(),
                _EventTimeSpanText(),
                const Gap(8),
                _EventLecturers(),
                const Gap(8),
                _EventSchedule(),
                const Gap(8),
                _EventGroups(),
                if (scheduleEvent.subject.comment.isNotEmpty) ...[
                  const Gap(8),
                  _EventComment(),
                ],
                const Gap(8),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 60,
                  ),
                  child: _EventLocation(),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: _EventNavFab(),
            ),
          ],
        ),
      ),
    );
  }
}
