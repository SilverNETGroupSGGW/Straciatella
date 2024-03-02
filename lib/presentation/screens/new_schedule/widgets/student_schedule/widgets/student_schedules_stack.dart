import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/student_schedule/cubits/user_choices/user_choices_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/student_schedule/models/choice.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/student_schedule/widgets/student_schedule_options_row.dart';

class StudentSchedulesStack extends StatefulWidget {
  const StudentSchedulesStack({super.key});

  @override
  State<StudentSchedulesStack> createState() => _StudentSchedulesStackState();
}

class _StudentSchedulesStackState extends State<StudentSchedulesStack> {
  final GlobalKey<AnimatedListState> animatedListKey = GlobalKey();
  final Duration animatedDuration = const Duration(milliseconds: 200);

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
                    : StudentScheduleOptionsRow(
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
    animatedListKey.currentState!.insertItem(index, duration: animatedDuration);
  }

  void animatedRemoveItem(int index) {
    animatedListKey.currentState!.removeItem(index, (context, animation) {
      return FadeTransition(opacity: animation);
    });
  }
}
