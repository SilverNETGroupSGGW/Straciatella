import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/customize_stage.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/final_stage.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/map_stage.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/notifications_stage.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/page_dots.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/schedules_stage.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/welcome_stage.dart';

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
    SchedulesStage(),
    NotificationsStage(),
    MapStage(),
    CustomizeStage(),
    FinalStage(),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    return pages[index];
                  },
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
      ),
    );
  }
}
