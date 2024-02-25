import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';

class AddNewFilterFAB extends StatelessWidget {
  const AddNewFilterFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LecturerPickedCubit, LecturerPickedState>(
      builder: (context, state) {
        return FloatingActionButton.extended(
          label: Text(
            '${'add_new_filter_button_text'.tr()} ${state.lecturerPicked!.academicDegree} ${state.lecturerPicked!.surname}',
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            Navigator.pop(context, state.lecturerPicked!.id);
          },
          icon: const Icon(Icons.add),
        );
      },
    );
  }
}
