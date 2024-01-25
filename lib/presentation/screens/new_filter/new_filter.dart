import 'dart:collection';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/builders/schedule_manager_builders/schedule_manager_schedule_options_tree_builder.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/options_row.dart';

class NewFilterScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NewFilterScreen({super.key});

  @override
  State<NewFilterScreen> createState() => _NewFilterScreenState();
}

class _NewFilterScreenState extends State<NewFilterScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ScheduleManagerBloc>(context)
        .add(const ScheduleManagerEvent.updateIndex());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('new_filter_title'.tr())),
      body: ScheduleManagerScheduleOptionsTreeBuilder(
        builder: (ctx, optionsTree) => optionsTree == null
            ? const CircularProgressIndicator() // TODO coś bardziej fancy
            : ListView(
                children: [
                  //Text('$optionsTree'),
                  NewFilterOptionsRow(
                    icon: nodeIcon(optionsTree.name),
                    setTitle: optionsTree.name.tr(),
                    chipTitles: keyListFromOptions(optionsTree.options),
                  ),

                ],
              ),
      ),
    );
  }

  IconData nodeIcon(String nodeName) {
    switch (nodeName) {
      case 'faculty':
        return Icons.apartment;
      case 'fieldOfStudy':
        return Icons.build;
      case 'studyMode':
        return Icons.calendar_month;
      case 'degreeOfStudy':
        return Icons.school;
      case 'semester':
        return Icons.numbers;
      default:
        return Icons.school;
    }
  }

  List<String> keyListFromOptions(SplayTreeMap options) =>
      options.keys.map((key) => key as String).toList();
}
