import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/cubits/user_choices/user_choices_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/models/choice.dart';

class ScheduleBottomAppBar extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  ScheduleBottomAppBar({super.key});

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
                        Navigator.pop(
                          context,
                          lastUserChoice.level!.leafValue,
                        );
                      }
                    : null,
                icon: const Icon(Icons.add),
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
