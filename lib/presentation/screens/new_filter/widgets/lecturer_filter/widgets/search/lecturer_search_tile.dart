import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';

class LecturerSearchTile extends StatelessWidget {
  const LecturerSearchTile({super.key, required this.lecturer});

  final LecturerBase lecturer;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LecturerPickedCubit, LecturerPickedState>(
      builder: (context, state) {
        return ListTile(
          title: Text(
            '${lecturer.academicDegree} ${lecturer.firstName} ${lecturer.surname}',
          ),
          subtitle: Text(lecturer.email),
          onTap: () {
            context.read<LecturerPickedCubit>().lecturerPicked(lecturer.id);
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
