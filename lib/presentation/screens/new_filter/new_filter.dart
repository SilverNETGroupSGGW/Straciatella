import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/builders/schedule_manager_builders/schedule_manager_schedule_options_tree_builder.dart';

class NewFilterScreen extends StatelessWidget {
  const NewFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('new_filter_title'.tr())),
      body: ScheduleManagerScheduleOptionsTreeBuilder(
        builder: (context, scheduleOptionsTree) => ListView(
          children: [
            Text('$scheduleOptionsTree'),
          ],
        ),
      ),
    );
  }
}
