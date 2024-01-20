import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_controller.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/is_aligned_page.dart';

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
        controller: PageController(
          viewportFraction: 1 / (MediaQuery.of(context).size.width / 60),
        ),
        builder: (context, controller) => PageView.builder(
          controller: controller,
          itemBuilder: (_, page) => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IsAlignedPage(
                  pageController: controller,
                  page: page,
                  error: 0.3,
                  builder: (context, isAligned) => AnimatedContainer(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(9999),
                    ),
                    clipBehavior: Clip.antiAlias,
                    duration: const Duration(milliseconds: 200),
                    width: isAligned ? 60 : 22,
                    height: isAligned ? 40 : 22,
                    child: Center(
                      child: isAligned
                          ? FittedBox(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("$page paź"),
                                  const Text("2024"),
                                ],
                              ),
                            )
                          : Text("$page"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
