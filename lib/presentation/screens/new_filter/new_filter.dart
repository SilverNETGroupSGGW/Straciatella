import 'dart:collection';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/options_row.dart';

class NewFilterScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NewFilterScreen({super.key});

  @override
  State<NewFilterScreen> createState() => _NewFilterScreenState();
}

class _NewFilterScreenState extends State<NewFilterScreen> {
  Queue<Map> userChoicesData = Queue();
  late OptionsTreeNode? currentNode;

  @override
  void initState() {
    super.initState();
    setState(() {
      final scheduleManagerBloc = BlocProvider.of<ScheduleManagerBloc>(context)
        ..add(const ScheduleManagerEvent.updateIndex());
      currentNode = scheduleManagerBloc.state.schedulesOptionsTree;
    });
  }

  void chipPressedCallback(dynamic selectedKey) {
    userChoicesData.add({
      'filterName': currentNode!.name,
      'filterOptions': currentNode!.options,
      'selectedOptionKey': selectedKey,
    });

    currentNode = currentNode?.options[selectedKey];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('new_filter_title'.tr())),
      body: currentNode == null
          ? const CircularProgressIndicator() // TODO coś bardziej fancy
          : ListView(
              children: [
                for (final Map choiceData in userChoicesData)
                  NewFilterOptionsRow(
                    filterName: choiceData['filterName'].toString(),
                    filterOptions: choiceData['filterOptions'] as SplayTreeMap,
                    callback: chipPressedCallback,
                  ),
                NewFilterOptionsRow(
                  filterName: currentNode!.name,
                  filterOptions: currentNode!.options,
                  callback: chipPressedCallback,
                ),
              ],
            ),
    );
  }
}
