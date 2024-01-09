import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageDots extends StatelessWidget {
  const PageDots({
    super.key,
    required this.controller,
    required this.dotCount,
    required this.currentPage,
  });

  final PageController controller;
  final int dotCount;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: currentPage != 0
                  ? TextButton(
                      onPressed: () async {
                        await controller.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                        if (kDebugMode) {
                          print(controller.page);
                        }
                      },
                      child: const Text("Previous"),
                    )
                  : Container(),
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: dotCount,
            effect: WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              dotColor: Theme.of(context).colorScheme.onBackground,
              activeDotColor: Theme.of(context).colorScheme.primary,
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: currentPage != dotCount - 1
                  ? FilledButton(
                      onPressed: () {
                        controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                      child: const Text("Next"),
                    )
                  : FilledButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          RouteNames.timeline,
                          (route) => false,
                        );
                      },
                      child: const Text("Finish"),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
