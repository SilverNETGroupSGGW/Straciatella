import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';

// ignore: must_be_immutable
class LecturerResultRadioTile extends StatefulWidget {
  LecturerResultRadioTile({
    super.key,
    required this.lecturer,
  });

  LecturerBase lecturer;

  @override
  State<LecturerResultRadioTile> createState() =>
      _LecturerResultRadioTileState();
}

class _LecturerResultRadioTileState extends State<LecturerResultRadioTile> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LecturerPickedCubit, LecturerPickedState>(
      builder: (BuildContext context, LecturerPickedState state) {
        return RadioListTile(
          value: widget.lecturer.id,
          groupValue: state.lecturerPickedId,
          onChanged: (_) {
            context
                .read<LecturerPickedCubit>()
                .lecturerPicked(widget.lecturer.id);
          },
          title: Text(
            '${widget.lecturer.academicDegree} ${widget.lecturer.firstName} ${widget.lecturer.surname}',
          ),
          subtitle: Text(widget.lecturer.email),
        );
      },
    );
  }
}
