import 'package:bloc/bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/models/choice.dart';

part 'user_choices_state.dart';

class UserChoicesCubit extends Cubit<UserChoicesState> {
  UserChoicesCubit() : super(UserChoicesState());

  void updateUserChoices(List<Choice> choices) {
    emit(UserChoicesState(userChoices: choices));
  }
}
