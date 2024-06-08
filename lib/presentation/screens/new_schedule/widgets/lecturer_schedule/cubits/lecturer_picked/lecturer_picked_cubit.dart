import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';

part 'lecturer_picked_state.dart';

class LecturerPickedCubit extends Cubit<LecturerPickedState> {
  LecturerPickedCubit() : super(LecturerPickedState(lecturerPicked: null));

  void lecturerPicked(LecturerBase lecturer) =>
      emit(LecturerPickedState(lecturerPicked: lecturer));
}
