import 'package:flutter/widgets.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_controller.dart';

class CalendarPagePicker extends StatelessWidget
    implements PreferredSizeWidget {
  const CalendarPagePicker({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: preferredSize.height),
      child: CalendarPageControler(
        viewportFraction: 0.2,
        builder: (context, controller) => PageView.builder(
          controller: controller,
          itemBuilder: (_, page) => Center(
            child: Text("Date: $page"),
          ),
        ),
      ),
    );
  }
}
