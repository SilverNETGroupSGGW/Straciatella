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
  int animatedListRowsCount = 1;

final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  late ListModel<int> _list;
  int? _selectedItem;
  late int
      _nextItem; // The next item inserted when the user presses the '+' button.

  @override
  void initState() {
    super.initState();
    _list = ListModel<int>(
      listKey: _listKey,
      initialItems: <int>[0, 1, 2],
      removedItemBuilder: _buildRemovedItem,
    );
    _nextItem = 3;
  }

  // Used to build list items that haven't been removed.
  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation,) {
    return CardItem(
      animation: animation,
      item: _list[index],
      selected: _selectedItem == _list[index],
      onTap: () {
        setState(() {
          _selectedItem = _selectedItem == _list[index] ? null : _list[index];
        });
      },
    );
  }

  /// The builder function used to build items that have been removed.
  ///
  /// Used to build an item after it has been removed from the list. This method
  /// is needed because a removed item remains visible until its animation has
  /// completed (even though it's gone as far as this ListModel is concerned).
  /// The widget will be used by the [AnimatedListState.removeItem] method's
  /// [AnimatedRemovedItemBuilder] parameter.
  Widget _buildRemovedItem(
      int item, BuildContext context, Animation<double> animation,) {
    return CardItem(
      animation: animation,
      item: item,
      // No gesture detector here: we don't want removed items to be interactive.
    );
  }

  // Insert the "next item" into the list model.
  void _insert() {
    final int index =
        _selectedItem == null ? _list.length : _list.indexOf(_selectedItem!);
    _list.insert(index, _nextItem++);
  }

  // Remove the selected item from the list model.
  void _remove() {
    if (_selectedItem != null) {
      _list.removeAt(_list.indexOf(_selectedItem!));
      setState(() {
        _selectedItem = null;
      });
    }
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
              final ListModel<int> listModel = ListModel(listKey: animatedListKey, removedItemBuilder: removedItemBuilder)

              return AnimatedList(
                key: animatedListKey,
                shrinkWrap: true,
                initialItemCount: animatedListRowsCount,
                itemBuilder: (context, index, animation) =>
                    BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
                  builder: (context, state) {
                    int t = 0;
                    OptionsTreeNode? level = state.schedulesOptionsTree;
                    if (userChoicesState.pickedKeys.isNotEmpty) {
                      while (t <= index && level != null) {
                        level =
                            level.options[userChoicesState.pickedKeys[index]];
                        t++;
                      }
                    }
                    return SizeTransition(
                      sizeFactor: animation,
                      child: (level == null || level.isLeaf)
                          ? null
                          : StudentScheduleOptionsRow(
                              choiceIndex: index,
                              level: level,
                            ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
