import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

/// Use this builder to render schedule tree
class ScheduleManagerScheduleOptionsTreeBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context,
      OptionsTreeNode? schedulesOptionsTree,
      ) builder;

  const ScheduleManagerScheduleOptionsTreeBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      buildWhen: (previous, current) {
        return previous.schedulesOptionsTree !=
            current.schedulesOptionsTree;
      },
      builder: (context, state) => builder(
        context,
        state.schedulesOptionsTree,
      ),
    );
  }
}
