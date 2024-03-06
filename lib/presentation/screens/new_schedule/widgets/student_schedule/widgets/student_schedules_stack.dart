import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
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
  late List<OptionsTreeNode> _levels;

  @override
  void initState() {
    super.initState();
    final optionsRoot =
        context.read<ScheduleManagerBloc>().state.schedulesOptionsTree;
    _levels = [optionsRoot!];
  }

  Widget _buildLevel(
    BuildContext context,
    int index,
    dynamic selected,
    Animation<double> animation,
  ) {
    return SizeTransition(
      sizeFactor: animation,
      child: (_levels[index].isLeaf)
          ? null
          : StudentScheduleOptionsRow(
              choiceIndex: index,
              level: _levels[index],
              selectedKey: selected,
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 20.0),
      child: BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
        builder: (context, scheduleManagerState) {
          return BlocConsumer<UserChoicesCubit, UserChoicesState>(
            listener: (context, userChoicesState) {
              int listRowsCount = _levels.length;
              final int newListRowsCount =
                  userChoicesState.pickedKeys.length + 1;

              while (listRowsCount < newListRowsCount) {
                animatedListKey.currentState?.insertItem(listRowsCount);
                listRowsCount++;
              }
              while (listRowsCount > newListRowsCount) {
                animatedListKey.currentState?.removeItem(
                  listRowsCount - 1,
                  // (context, animation) => _buildLevel(
                  //   context,
                  //   listRowsCount - 1,
                  //   null,
                  //   animation,
                  // ),
                  (context, animation) => const SizedBox.shrink(),
                );
                listRowsCount--;
              }
              _levels = scheduleManagerState.schedulesOptionsTree!
                  .getPath(userChoicesState.pickedKeys)!;
            },
            builder: (context, userChoicesState) {
              return AnimatedList(
                key: animatedListKey,
                shrinkWrap: true,
                initialItemCount: _levels.length,
                itemBuilder: (
                  context,
                  index,
                  animation,
                ) =>
                    _buildLevel(
                  context,
                  index,
                  index < userChoicesState.pickedKeys.length
                      ? userChoicesState.pickedKeys[index]
                      : null,
                  animation,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
