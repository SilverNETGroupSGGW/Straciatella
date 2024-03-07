import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

part 'user_choices_state.dart';

class UserChoicesCubit extends Cubit<UserChoicesState> {
  late final StreamSubscription _scheduleManagerBlocSubscription;

  UserChoicesCubit({required ScheduleManagerBloc scheduleManagerBloc})
      : super(UserChoicesState()) {
    _scheduleManagerBlocSubscription =
        scheduleManagerBloc.stream.listen((event) {
      final newPickedKeys = [];
      if (state.pickedKeys.isNotEmpty) {
        OptionsTreeNode? currentLevel = event.schedulesOptionsTree;

        while (currentLevel != null) {
          final levelChoice = state.pickedKeys[newPickedKeys.length];
          if (currentLevel.options.containsKey(levelChoice)) {
            newPickedKeys.add(levelChoice);
          }
          currentLevel = currentLevel.options[levelChoice];
        }
      }
      emit(UserChoicesState(pickedKeys: newPickedKeys));
    });
  }

  // add new element at the end of list
  void selectChoiceOnLevel(dynamic key, int level) {
    final newChoices = List.from(state.pickedKeys);
    if (newChoices.length > level) {
      newChoices.removeRange(level, newChoices.length);
    }
    newChoices.add(key);

    emit(UserChoicesState(pickedKeys: newChoices));
  }

  @override
  Future<void> close() {
    _scheduleManagerBlocSubscription.cancel();
    return super.close();
  }
}
