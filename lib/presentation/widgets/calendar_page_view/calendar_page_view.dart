import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_controller.dart';

class CalendarPageView extends StatefulWidget {
  const CalendarPageView({super.key});

  @override
  State<CalendarPageView> createState() => _CalendarPageViewState();
}

class _CalendarPageViewState extends State<CalendarPageView> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<CalendarPageCubit, CalendarPageCubitState>(
      listener: (context, state) {
        if (state.invoker != this) {
          _pageController.position.correctPixels(state.pixels);
          _pageController.position.notifyListeners();
        }
      },
      child: NotificationListener(
        onNotification: (notif) {
          if (notif is ScrollUpdateNotification) {
            context
                .read<CalendarPageCubit>()
                .setPixels(_pageController.position.pixels, this);
          }
          return false;
        },
        child: PageView.builder(
          controller: _pageController,
          itemBuilder: (_, page) => Center(
            child: Text("View: $page"),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
