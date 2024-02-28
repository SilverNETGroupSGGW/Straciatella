import 'package:bloc/bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/models/choice.dart';

part 'user_choices_state.dart';

class UserChoicesCubit extends Cubit<UserChoicesState> {
  UserChoicesCubit() : super(UserChoicesState());

  void addUserChoice(Choice choice) {
    emit(UserChoicesState(userChoices: [...state.userChoices, choice]));
  }

  void removeLastChoice() => emit(
        UserChoicesState(
          userChoices:
              state.userChoices.sublist(0, state.userChoices.length - 1),
        ),
      );

  void updateExistingChoice(int choiceIndex, dynamic selectedKey) {
    final List<Choice> userChoices = state.userChoices;
    userChoices[choiceIndex].selected = selectedKey;
    emit(UserChoicesState(userChoices: userChoices));
  }

  void resetUserChoices(Choice choice) =>
      emit(UserChoicesState(userChoices: [choice]));
}
