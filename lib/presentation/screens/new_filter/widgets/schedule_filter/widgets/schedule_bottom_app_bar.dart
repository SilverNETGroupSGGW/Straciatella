import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/cubits/user_choices/user_choices_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/models/choice.dart';

class ScheduleBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BlocBuilder<UserChoicesCubit, UserChoicesState>(
        builder: (context, state) {
          final Choice lastUserChoice = state.userChoices.last;

          return Row(
            children: [
              Text(
                currentLevelText(
                  lastUserChoice.level!.isLeaf,
                  lastUserChoice.level!.name,
                ),
                style: const TextStyle(fontSize: 16),
              ),
              const Spacer(),
              ElevatedButton.icon(
                onPressed: state.userChoices.last.level!.isLeaf
                    ? () {
                        Navigator.pop<ScheduleKey>(
                          context,
                          (
                            type: ScheduleType.schedule,
                            id: lastUserChoice.level!.leafValue,
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
      ),
    );
  }

  String currentLevelText(bool isLeaf, String levelName) {
    return isLeaf
        ? 'filter_picked'.tr()
        : '${'pick'.tr()} ${levelName.tr().toLowerCase()}';
  }
}
