import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: public_member_api_docs
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smooth Page Indicator Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final controller = PageController(
    viewportFraction: 0.8,
    keepPage: true,
  );

  int currentPage = 0;

  final pages = <Widget>[
    WelcomeStage(),
    WelcomeStage(),
    WelcomeStage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: pages,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
              ),
            ),
            PageDots(
              currentPage: currentPage,
              controller: controller,
              dotCount: pages.length,
            ),
          ],
        ),
      ),
    );
  }
}

class PageDots extends StatelessWidget {
  const PageDots({
    super.key,
    required this.controller,
    required this.dotCount,
    required this.currentPage,
  });

  final PageController controller;
  final int dotCount, currentPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: currentPage != 0
                  ? TextButton(
                      onPressed: () async {
                        await controller.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                        print(controller.page);
                      },
                      child: Text("Previous"),
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
              child: FilledButton(
                onPressed: () {
                  controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
                child: Text("Next"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeStage extends StatelessWidget {
  const WelcomeStage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icon/icon.png',
          width: 200,
          height: 200,
        ),
        SizedBox(
          height: 250,
        ),
        Column(
          children: [
            Text(
              "welcome".tr(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "welcome_desc".tr(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
