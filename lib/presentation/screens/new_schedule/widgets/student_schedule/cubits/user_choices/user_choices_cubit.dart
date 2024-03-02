import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/student_schedule/models/choice.dart';

part 'user_choices_state.dart';

class UserChoicesCubit extends Cubit<UserChoicesState> {
  UserChoicesCubit() : super(UserChoicesState());

  void updateUserChoices(List<Choice> choices) {
    emit(UserChoicesState(userChoices: choices));
  }
}
