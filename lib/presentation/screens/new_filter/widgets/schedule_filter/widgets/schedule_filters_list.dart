import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/models/choice.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/widgets/add_new_filter_button.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/widgets/options_row.dart';

// ignore: must_be_immutable
class ScheduleFiltersList extends StatefulWidget {
  ScheduleFiltersList({super.key, required this.optionsTree});

  OptionsTreeNode optionsTree;

  @override
  State<ScheduleFiltersList> createState() => _ScheduleFiltersListState();
}

class _ScheduleFiltersListState extends State<ScheduleFiltersList> {
  late List<Choice> userChoices;

  final GlobalKey<AnimatedListState> _animatedListStateKey = GlobalKey();
  final Duration _animateDuration = const Duration(milliseconds: 100);

  void chipPressedCallback(OptionsTreeNode level, dynamic selectedKey) {
    final choiceIndex =
        userChoices.indexWhere((choice) => choice.level == level);

    for (int i = userChoices.length - 1; i > choiceIndex; i--) {
      animateRemovingItem(i);
      userChoices.removeAt(i);
    }

    userChoices[choiceIndex].selected = selectedKey;
    userChoices.add(Choice(level: level.options[selectedKey], selected: null));
    animateAddingItem(userChoices.length - 1);
    setState(() {});
  }

  void animateAddingItem(int index) {
    _animatedListStateKey.currentState!
        .insertItem(index, duration: _animateDuration);
  }

  void animateRemovingItem(int index) {
    _animatedListStateKey.currentState!.removeItem(
      index,
      (_, animation) => SizeTransition(
        sizeFactor: animation,
      ),
      duration: _animateDuration,
    );
  }

  @override
  void initState() {
    super.initState();
    userChoices = [
      Choice(
        level: widget.optionsTree,
        selected: null,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 20.0),
      child: BlocListener<ScheduleManagerBloc, ScheduleManagerState>(
        listener: (context, state) {
          widget.optionsTree = state.schedulesOptionsTree!;
          userChoices = [
            Choice(level: widget.optionsTree, selected: null),
          ];
        },
        child: AnimatedList(
          key: _animatedListStateKey,
          initialItemCount: userChoices.length,
          shrinkWrap: true,
          itemBuilder: (context, index, animation) => SizeTransition(
            sizeFactor: animation,
            child: !userChoices[index].level!.isLeaf
                ? NewFilterOptionsRow(
                    level: userChoices[index].level!,
                    selectedKey: userChoices[index].selected,
                    callback: chipPressedCallback,
                  )
                : AddNewFilterButton(
                    pickedId: userChoices.last.level!.leafValue.toString(),
                  ),
          ),
        ),
      ),
    );
  }
}
