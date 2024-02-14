import 'dart:collection';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/add_new_filter_button.dart';
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
    final scheduleManagerBloc = context.read<ScheduleManagerBloc>()
      ..add(const ScheduleManagerEvent.updateIndex());
    currentNode = scheduleManagerBloc.state.schedulesOptionsTree;
  }

  void chipPressedCallback(OptionsTreeNode node, dynamic selectedKey) {
    bool nodeAlreadyPicked = false;
    for (final Map choices in userChoicesData) {
      if (choices['node'] == node) {
        nodeAlreadyPicked = true;
        break;
      }
    }

    if (nodeAlreadyPicked) {
      while (userChoicesData.last['node'] != node) {
        userChoicesData.removeLast();
      }
      userChoicesData.removeLast();
    }

    userChoicesData.addLast({
      'node': node,
      'selectedKey': selectedKey,
    });

    currentNode = node.options[selectedKey];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('new_filter_title'.tr())),
      body: BlocConsumer<ScheduleManagerBloc, ScheduleManagerState>(
        listener: (context, state) {
          currentNode = state.schedulesOptionsTree;
          userChoicesData = Queue();
        },
        builder: (context, state) {
          if (state.refreshingIndex || state.schedulesOptionsTree == null) {
            // TODO: Informacja o ładowaniu (najnowszych) planów
            return const CircularProgressIndicator();
          }
          return Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                for (final Map choiceData in userChoicesData)
                  NewFilterOptionsRow(
                    node: choiceData['node'] as OptionsTreeNode,
                    selectedKey: choiceData['selectedKey'],
                    callback: chipPressedCallback,
                  ),
                if (currentNode!.isLeaf)
                  AddNewFilterButton(pickedId: currentNode!.leafValue)
                else
                  NewFilterOptionsRow(
                    node: currentNode!,
                    callback: chipPressedCallback,
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
