import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/lecturer_schedule/cubits/lecturer_picked/lecturer_picked_cubit.dart';

class LecturerScheduleTile extends StatelessWidget {
  const LecturerScheduleTile({super.key, required this.lecturer});

  final LecturerBase lecturer;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LecturerPickedCubit, LecturerPickedState>(
      builder: (context, state) {
        return RadioListTile(
          value: lecturer.id,
          groupValue: state.lecturerPicked?.id,
          title: Text(
            '${lecturer.academicDegree} ${lecturer.firstName} ${lecturer.surName}',
          ),
          subtitle: Text(lecturer.email),
          onChanged: (_) {
            context.read<LecturerPickedCubit>().lecturerPicked(lecturer);
            if (!kIsWeb && Platform.isAndroid) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          },
        );
      },
    );
  }
}
