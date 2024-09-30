import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lesson_data/lesson_data.dart';
import 'package:silvertimetable/presentation/models/group/group_chip.dart';
import 'package:silvertimetable/presentation/models/lesson_data/lesson_data_provider.dart';
import 'package:silvertimetable/presentation/widgets/icon_text.dart';

part 'lesson_data_desc_comment.dart';
part 'lesson_data_desc_groups.dart';
part 'lesson_data_desc_lecturers.dart';
part 'lesson_data_desc_location.dart';
part 'lesson_data_desc_name.dart';
part 'lesson_data_desc_schedule.dart';
part 'lesson_data_desc_time_span.dart';
part 'lesson_data_desc_type.dart';
part 'section.dart';

class LessonDataDesc extends StatelessWidget {
  final LessonData lessonData;
  const LessonDataDesc({
    super.key,
    required this.lessonData,
  });

  @override
  Widget build(BuildContext context) {
    return LessonDataProvider(
      lessonData,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.sizeOf(context).height * 0.6,
          minWidth: MediaQuery.sizeOf(context).width,
          maxWidth: 640,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _EventName(),
              _EventType(),
              if (lessonData.subject.comment.isNotEmpty) ...[
                const Gap(16),
                _EventComment(),
              ],
              const Gap(24),
              _EventTimeSpanText(),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _EventLocation(),
                    _EventNavFab(),
                  ],
                ),
              ),
              const Divider(),
              _EventLecturers(),
              // const Gap(8),
              // _EventSchedule(),
              // const Gap(8),
              // _EventGroups(),
            ],
          ),
        ),
      ),
    );
  }
}
