import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/lecturer_schedule/cubits/lecturer_picked/lecturer_picked_cubit.dart';

class LecturerScheduleBottomAppBar extends StatelessWidget {
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
                    : () => Navigator.pop<ScheduleKey>(
                          context,
                          (
                            type: ScheduleType.lecturer,
                            id: state.lecturerPicked!.id,
                          ),
                        ),
                icon: const Icon(Symbols.add),
                label: Text('add'.tr()),
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
