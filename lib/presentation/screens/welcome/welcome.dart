import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/page_dots.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/welcome_stage.dart';
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
