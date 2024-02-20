import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';

// ignore: must_be_immutable
class LecturerOptionsTreeResult extends StatefulWidget {
  LecturerOptionsTreeResult({
    super.key,
    required this.level,
    required this.currentKey,
  });

  OptionsTreeNode level;
  dynamic currentKey;

  @override
  State<LecturerOptionsTreeResult> createState() =>
      _LecturerOptionsTreeResultState();
}

class _LecturerOptionsTreeResultState extends State<LecturerOptionsTreeResult> {
  dynamic selectedKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LecturerPickedCubit, LecturerPickedState>(
      builder: (BuildContext context, LecturerPickedState state) {
        return RadioListTile(
          value: widget.currentKey,
          groupValue: selectedKey,
          onChanged: (value) => setState(() {
            selectedKey = widget.currentKey;

            final String lecturerId =
                widget.level.options[widget.currentKey]!.leafValue.toString();
            context.read<LecturerPickedCubit>().lecturerPicked(lecturerId);
          }),
          title: Text(widget.currentKey.toString()),
        );
      },
    );
  }
}
