import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/add_new_filter_button.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/options_row.dart';

class Choice {
  Choice({required this.level, required this.selected});

  OptionsTreeNode? level;
  dynamic selected;
}

class NewScheduleFilterScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NewScheduleFilterScreen({super.key});

  @override
  State<NewScheduleFilterScreen> createState() =>
      _NewScheduleFilterScreenState();
}

class _NewScheduleFilterScreenState extends State<NewScheduleFilterScreen> {
  late List<Choice> userChoices;

  @override
  void initState() {
    super.initState();
    context
        .read<ScheduleManagerBloc>()
        .add(const ScheduleManagerEvent.updateIndex());

    userChoices = [
      Choice(
        level: context.read<ScheduleManagerBloc>().state.schedulesOptionsTree,
        selected: null,
      ),
    ];
  }

  void chipPressedCallback(OptionsTreeNode level, dynamic selectedKey) {
    final choiceIndex =
        userChoices.indexWhere((choice) => choice.level == level);

    for (int i = userChoices.length - 1; i > choiceIndex; i--) {
      userChoices.removeAt(i);
    }

    userChoices[choiceIndex].selected = selectedKey;
    userChoices.add(Choice(level: level.options[selectedKey], selected: null));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('new_filter_title'.tr())),
      body: BlocConsumer<ScheduleManagerBloc, ScheduleManagerState>(
        listener: (context, state) {
          userChoices = [
            Choice(level: state.schedulesOptionsTree, selected: null),
          ];
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
              children: userChoices
                  .map(
                    (choice) => !choice.level!.isLeaf
                        ? NewFilterOptionsRow(
                            level: choice.level!,
                            selectedKey: choice.selected,
                            callback: chipPressedCallback,
                          )
                        : AddNewFilterButton(
                            pickedId:
                                userChoices.last.level!.leafValue.toString(),
                          ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
