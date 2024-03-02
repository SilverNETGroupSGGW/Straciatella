import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_input_state.dart';

class SearchInputCubit extends Cubit<SearchInputState> {
  SearchInputCubit() : super(SearchInputState());

  void inputTextChanged(String input) =>
      emit(SearchInputState(searchInput: input));
}
