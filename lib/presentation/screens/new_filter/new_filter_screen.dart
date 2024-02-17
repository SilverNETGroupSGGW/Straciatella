import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/models/choice.dart';
import 'package:silvertimetable/presentation/screens/new_filter/models/filter_type.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/filters_loading.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/lecturer_filters_list.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/schedule_filters_list.dart';

// ignore: must_be_immutable
class NewFilterScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NewFilterScreen({super.key, required this.filterType});

  FilterType filterType;

  @override
  State<NewFilterScreen> createState() => _NewFilterScreenState();
}

class _NewFilterScreenState extends State<NewFilterScreen> {
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
          final OptionsTreeNode? optionsTree =
              widget.filterType == FilterType.schedule
                  ? state.schedulesOptionsTree
                  : state.lecturersOptionsTree;

          if (optionsTree == null) {
            return FiltersLoading();
          }

          final returnedFiltersList = widget.filterType == FilterType.schedule
              ? ScheduleFiltersList(optionsTree: optionsTree)
              : LecturerFiltersList(optionsTree: optionsTree);

          if (state.refreshingIndex) {
            return Column(
              children: [
                const LinearProgressIndicator(),
                const Spacer(),
                returnedFiltersList,
              ],
            );
          }

          return returnedFiltersList;
        },
      ),
    );
  }
}
