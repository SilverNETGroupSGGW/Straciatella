import 'package:flutter/widgets.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_controller.dart';

class CalendarPageView extends StatelessWidget {
  const CalendarPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarPageControler(
      builder: (context, controller) => PageView.builder(
        controller: controller,
        itemBuilder: (_, page) => Center(
          child: Text("View: $page"),
        ),
      ),
    );
  }
}
