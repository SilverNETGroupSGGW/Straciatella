import 'package:bloc/bloc.dart';

part 'lecturer_picked_state.dart';

class LecturerPickedCubit extends Cubit<LecturerPickedState> {
  LecturerPickedCubit() : super(LecturerPickedState(lecturerPickedId: null));

  void lecturerPicked(String id) =>
      emit(LecturerPickedState(lecturerPickedId: id));
  void lecturerNotPicked() => emit(LecturerPickedState(lecturerPickedId: null));
}
