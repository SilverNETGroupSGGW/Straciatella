import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/enums.dart';

class ScheduleFilterOption extends StatelessWidget {
  final ScheduleFilter filterType;

  const ScheduleFilterOption(this.filterType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(filterOptionText),
        const SizedBox(width: 16),
        FloatingActionButton.small(
          heroTag: null,
          onPressed: onPressed(context),
          child: Icon(filterIcon),
        ),
      ],
    );
  }

  String get filterOptionText => switch (filterType) {
        ScheduleFilter.studyProgram => 'change_schedule'.tr(),
        ScheduleFilter.semester => 'change_semester'.tr(),
        ScheduleFilter.group => 'change_group'.tr(),
      };

  IconData get filterIcon => switch (filterType) {
        ScheduleFilter.studyProgram => Symbols.calendar_month,
        ScheduleFilter.semester => Symbols.numbers,
        ScheduleFilter.group => Symbols.group,
      };

  void Function() onPressed(BuildContext context) => switch (filterType) {
        // TODO
        ScheduleFilter.studyProgram => () {},
        ScheduleFilter.semester => () {},
        ScheduleFilter.group => () {},
      };
}
