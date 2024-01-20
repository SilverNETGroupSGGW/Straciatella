import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_cubit.dart';

class CalendarPageControler extends StatefulWidget {
  final double viewportFraction;
  final Widget Function(BuildContext context, PageController controller)
      builder;

  const CalendarPageControler({
    super.key,
    this.viewportFraction = 1,
    required this.builder,
  });

  @override
  State<CalendarPageControler> createState() => _CalendarPageControlerState();
}

class _CalendarPageControlerState extends State<CalendarPageControler> {
  late final _pageController = PageController(
    viewportFraction: widget.viewportFraction,
  );

  @override
  Widget build(BuildContext context) {
    return BlocListener<CalendarPageCubit, CalendarPageCubitState>(
      listener: (context, state) {
        if (state.invoker != this) {
          _pageController.position.correctPixels(
            state.pixels * _pageController.viewportFraction,
          );
          _pageController.position.notifyListeners();
        }
      },
      child: NotificationListener(
        onNotification: (notif) {
          if (notif is ScrollUpdateNotification) {
            context.read<CalendarPageCubit>().setPixels(
                  _pageController.position.pixels /
                      _pageController.viewportFraction,
                  this,
                );
          }
          return false;
        },
        child: widget.builder(context, _pageController),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
