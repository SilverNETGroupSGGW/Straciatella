import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_controller.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/is_aligned_page.dart';

class CalendarPageView extends StatelessWidget {
  const CalendarPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarPageControler(
      builder: (context, controller) => PageView.builder(
        controller: controller,
        itemBuilder: (_, page) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("View: $page"),
              IsAlignedPage(
                pageController: controller,
                page: page,
                error: 0.1,
                builder: (context, isAligned) => isAligned
                    ? const Text(
                        "IS ALIGNED",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : const Text(
                        "NOT ALIGNED",
                        style: TextStyle(color: Colors.red),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
