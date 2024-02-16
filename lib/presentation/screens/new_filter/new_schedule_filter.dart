import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/filters_list.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/filters_loading.dart';

class Choice {
  Choice({required this.level, required this.selected});

  OptionsTreeNode? level;
  dynamic selected;
}

class NewScheduleFilterScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NewScheduleFilterScreen({super.key});

  @override
  State<NewScheduleFilterScreen> createState() =>
      _NewScheduleFilterScreenState();
}

class _NewScheduleFilterScreenState extends State<NewScheduleFilterScreen> {
  late List<Choice> userChoices;

  @override
  void initState() {
    super.initState();
    context
        .read<ScheduleManagerBloc>()
        .add(const ScheduleManagerEvent.updateIndex());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('new_filter_title'.tr())),
      body: BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
        builder: (context, state) {
          if (state.refreshingIndex && state.schedulesOptionsTree != null) {
            return Column(
              children: [
                const LinearProgressIndicator(),
                const Spacer(),
                FiltersList(optionsTree: state.schedulesOptionsTree!),
              ],
            );
          }
          if (state.schedulesOptionsTree == null) {
            return FiltersLoading();
          }
          return FiltersList(optionsTree: state.schedulesOptionsTree!);
        },
      ),
    );
  }
}
