import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';

class LecturerBottomAppBar extends StatelessWidget {
  const LecturerBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LecturerPickedCubit, LecturerPickedState>(
      builder: (context, state) {
        return BottomAppBar(
          child: Row(
            children: [
              Expanded(
                child: state.lecturerPicked == null
                    ? lecturerNotPickedText()
                    : lecturerPickedText(state.lecturerPicked!),
              ),
              ElevatedButton.icon(
                onPressed: state.lecturerPicked == null
                    ? null
                    : () => Navigator.pop(context, state.lecturerPicked!.id),
                icon: const Icon(Icons.add),
                label: const Text('Dodaj'),
              ),
            ],
          ),
        );
      },
    );
  }

  Text lecturerNotPickedText() {
    return Text(
      'pick_lecturer'.tr(),
      style: const TextStyle(color: Colors.grey, fontSize: 16),
    );
  }

  Text lecturerPickedText(LecturerBase lecturer) {
    final String text =
        '${lecturer.academicDegree} ${lecturer.firstName} ${lecturer.surname}';
    return Text(text, style: const TextStyle(fontSize: 16));
  }
}
