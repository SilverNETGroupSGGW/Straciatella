import 'package:bloc/bloc.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';

part 'lecturer_picked_state.dart';

class LecturerPickedCubit extends Cubit<LecturerPickedState> {
  LecturerPickedCubit() : super(LecturerPickedState(lecturerPicked: null));

  void lecturerPicked(LecturerBase lecturer) =>
      emit(LecturerPickedState(lecturerPicked: lecturer));
  void lecturerNotPicked() => emit(LecturerPickedState(lecturerPicked: null));
}
