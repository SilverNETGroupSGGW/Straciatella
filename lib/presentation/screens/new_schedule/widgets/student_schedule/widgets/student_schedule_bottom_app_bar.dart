import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/student_schedule/cubits/user_choices/user_choices_cubit.dart';

class StudentScheduleBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
        builder: (context, scheduleManagerState) {
          return BlocBuilder<UserChoicesCubit, UserChoicesState>(
            builder: (context, state) {
              final OptionsTreeNode? lastLevel = scheduleManagerState
                  .schedulesOptionsTree
                  ?.getValue(state.pickedKeys);

              return Row(
                children: [
                  Text(
                    currentLevelText(
                      lastLevel!.isLeaf,
                      lastLevel.name,
                    ),
                    style: const TextStyle(fontSize: 16),
                  ),
                  const Spacer(),
                  ElevatedButton.icon(
                    onPressed: lastLevel.isLeaf
                        ? () {
                            Navigator.pop<ScheduleKey>(
                              context,
                              (
                                type: ScheduleType.schedule,
                                id: lastLevel.leafValue,
                              ),
                            );
                          }
                        : null,
                    icon: const Icon(Symbols.add),
                    label: Text('add'.tr()),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  String currentLevelText(bool isLeaf, String levelName) {
    return isLeaf
        ? 'filter_picked'.tr()
        : '${'pick'.tr()} ${levelName.tr().toLowerCase()}';
  }
}
