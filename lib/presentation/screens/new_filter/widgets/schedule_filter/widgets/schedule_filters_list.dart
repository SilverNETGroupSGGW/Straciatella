import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/cubits/user_choices/user_choices_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/models/choice.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/widgets/options_row.dart';

// ignore: must_be_immutable
class ScheduleFiltersList extends StatefulWidget {
  const ScheduleFiltersList({super.key});

  @override
  State<ScheduleFiltersList> createState() => _ScheduleFiltersListState();
}

class _ScheduleFiltersListState extends State<ScheduleFiltersList> {
  final GlobalKey<AnimatedListState> animatedListKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    context.read<UserChoicesCubit>().updateUserChoices([
      Choice(
        level: context.read<ScheduleManagerBloc>().state.schedulesOptionsTree,
        selected: null,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 20.0),
      child: BlocListener<ScheduleManagerBloc, ScheduleManagerState>(
        listener: (context, state) {
          context.read<UserChoicesCubit>().updateUserChoices([
            Choice(level: state.schedulesOptionsTree, selected: null),
          ]);
        },
        child: BlocBuilder<UserChoicesCubit, UserChoicesState>(
          builder: (context, state) {
            return AnimatedList(
              key: animatedListKey,
              shrinkWrap: true,
              initialItemCount: state.userChoices.length,
              itemBuilder: (context, index, animation) => SizeTransition(
                sizeFactor: animation,
                child: state.userChoices[index].level!.isLeaf
                    ? null
                    : NewFilterOptionsRow(
                        choiceIndex: index,
                        animatedAddItem: animatedAddItem,
                        animatedRemoveItem: animatedRemoveItem,
                      ),
              ),
            );
          },
        ),
      ),
    );
  }

  void animatedAddItem(int index) {
    animatedListKey.currentState!.insertItem(index);
  }

  void animatedRemoveItem(int index) {
    animatedListKey.currentState!.removeItem(index, (context, animation) {
      return FadeTransition(opacity: animation);
    });
  }
}
