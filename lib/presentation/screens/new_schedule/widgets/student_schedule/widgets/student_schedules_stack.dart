import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/models/list_model/list_model.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/student_schedule/cubits/user_choices/user_choices_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/student_schedule/widgets/student_schedule_options_row.dart';

class StudentSchedulesStack extends StatefulWidget {
  const StudentSchedulesStack({super.key});

  @override
  State<StudentSchedulesStack> createState() => _StudentSchedulesStackState();
}

class _StudentSchedulesStackState extends State<StudentSchedulesStack> {
  final GlobalKey<AnimatedListState> animatedListKey = GlobalKey();
  final Duration animatedDuration = const Duration(milliseconds: 200);
  late ListModel<OptionsTreeNode> _levels;

  @override
  void initState() {
    super.initState();
    _levels = ListModel<OptionsTreeNode>(
      listKey: animatedListKey,
      initialItems: <OptionsTreeNode>[],
      removedItemBuilder: (level, context, animation) =>
          _buildLevel(context, _levels.indexOf(level), animation),
    );
  }

  // Used to build list items that haven't been removed.
  Widget _buildLevel(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) {
    return SizeTransition(
      sizeFactor: animation,
      child: (_levels[index].isLeaf)
          ? null
          : StudentScheduleOptionsRow(
              choiceIndex: index,
              level: _levels[index],
            ),
    );
  }

  // Insert the "next item" into the list model.
  void _insertLast(OptionsTreeNode level) {
    // todo:
    // final int index =
    //     _selectedItem == null ? _list.length : _list.indexOf(_selectedItem!);
    // _list.insert(index, _nextItem++);
  }

  // Remove the selected item from the list model.
  void _removeLast() {
    // todo:
    // if (_selectedItem != null) {
    //   _list.removeAt(_list.indexOf(_selectedItem!));
    //   setState(() {
    //     _selectedItem = null;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 20.0),
      child: BlocConsumer<UserChoicesCubit, UserChoicesState>(
        listener: (context, state) {
          // final int currentRowsCount = state.pickedKeys.length;
          // int rowsDifference = currentRowsCount - animatedListRowsCount;
          // animatedListRowsCount = currentRowsCount;

          // if (rowsDifference < 0) {
          //   while (rowsDifference < 0) {
          //     animatedListKey.currentState?.removeItem(
          //       currentRowsCount + rowsDifference,
          //       (context, animation) => SizeTransition(sizeFactor: animation),
          //     );
          //     rowsDifference++;
          //   }
          // } else if (rowsDifference > 0) {
          //   int t = 0;
          //   while (rowsDifference > 0) {
          //     animatedListKey.currentState?.insertItem(currentRowsCount + t);
          //     t++;
          //     rowsDifference--;
          //   }
          // }
        },
        builder: (context, userChoicesState) {
          return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
            builder: (context, state) {
              return AnimatedList(
                key: animatedListKey,
                shrinkWrap: true,
                initialItemCount: _levels.length,
                itemBuilder: _buildLevel,
              );
            },
          );
        },
      ),
    );
  }
}
