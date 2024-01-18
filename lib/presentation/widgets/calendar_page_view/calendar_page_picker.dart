import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_controller.dart';

class CalendarPagePicker extends StatefulWidget implements PreferredSizeWidget {
  const CalendarPagePicker({super.key});

  @override
  State<CalendarPagePicker> createState() => _CalendarPagePickerState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}

class _CalendarPagePickerState extends State<CalendarPagePicker> {
  final _pageController = PageController(viewportFraction: 0.2);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: widget.preferredSize.height),
      child: BlocListener<CalendarPageCubit, CalendarPageCubitState>(
        listener: (context, state) {
          if (state.invoker != this) {
            _pageController.position
                .correctPixels(state.pixels * _pageController.viewportFraction);
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
          child: PageView.builder(
            controller: _pageController,
            itemBuilder: (_, page) => Center(
              child: Text("Date: $page"),
            ),
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
