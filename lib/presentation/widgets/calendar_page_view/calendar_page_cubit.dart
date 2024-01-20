import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef CalendarPageCubitState = ({double pixels, Object? invoker});

class CalendarPageCubit extends Cubit<CalendarPageCubitState> {
  CalendarPageCubit([
    super.initial = (pixels: 0, invoker: null),
  ]);

  void setPixels(double pixels, Object invoker) =>
      emit((pixels: pixels, invoker: invoker));
}

class CalendarPageCubitProvider extends StatelessWidget {
  final Widget child;

  const CalendarPageCubitProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalendarPageCubit(),
      child: child,
    );
  }
}
