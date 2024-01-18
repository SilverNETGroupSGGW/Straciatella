import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef CalendarPageCubitState = ({int page, Object? invoker});

class CalendarPageCubit extends Cubit<CalendarPageCubitState> {
  CalendarPageCubit([
    super.initialPage = (page: 0, invoker: null),
  ]);

  void setPage(int page, Object invoker) =>
      emit((page: page, invoker: invoker));
}

class CalendarPageController extends StatelessWidget {
  final int initialPage;
  final Widget child;

  const CalendarPageController({
    super.key,
    this.initialPage = 0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalendarPageCubit((page: initialPage, invoker: null)),
      child: child,
    );
  }
}
