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
  @override
  void initState() {
    super.initState();
    context.read<UserChoicesCubit>().resetUserChoices(
          Choice(
            level:
                context.read<ScheduleManagerBloc>().state.schedulesOptionsTree,
            selected: null,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 20.0),
      child: BlocListener<ScheduleManagerBloc, ScheduleManagerState>(
        listener: (context, state) {
          context.read<UserChoicesCubit>().resetUserChoices(
                Choice(level: state.schedulesOptionsTree, selected: null),
              );
        },
        child: BlocBuilder<UserChoicesCubit, UserChoicesState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.userChoices.length,
              itemBuilder: (context, index) => NewFilterOptionsRow(
                choiceIndex: index,
              ),
            );
          },
        ),
      ),
    );
  }
}
