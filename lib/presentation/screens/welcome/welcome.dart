import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/page_dots.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/welcome_stage.dart';
import 'package:silvertimetable/router.dart';

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
  final controller = PageController();

  int currentPage = 0;
  static const iconSize = 150.0;

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      WelcomeStage(
        header: Image(
          image: AssetImage('assets/icon/icon.png'),
          width: 200,
          height: 200,
        ),
        title: 'welcome_stage_text'.tr(),
        desc: 'welcome_stage_desc'.tr(),
      ),
      WelcomeStage(
        header: Icon(
          Icons.search,
          size: iconSize,
        ),
        title: 'schedules_stage_text'.tr(),
        desc: 'schedules_stage_desc'.tr(),
      ),
      WelcomeStage(
        header: Icon(
          // TODO: Change icon to off depending on the permission
          Icons.notifications,
          size: iconSize,
        ),
        title: 'notifications_stage_text'.tr(),
        desc: 'notifications_stage_desc'.tr(),
        leading: FilledButton(
            onPressed: () {}, child: Text('allow_notifications'.tr())),
      ),
      WelcomeStage(
        header: Icon(
          Icons.map,
          size: iconSize,
        ),
        title: 'map_stage_text'.tr(),
        desc: 'map_stage_desc'.tr(),
      ),
      WelcomeStage(
        header: Icon(
          Icons.palette,
          size: iconSize,
        ),
        title: 'customization_stage_text'.tr(),
        desc: 'customization_stage_desc'.tr(),
        leading: FilledButton(
            onPressed: () {
              // TODO: Navigate to theme screen instead of settings
              Navigator.of(context).pushNamed(RouteNames.settings);
            },
            child: Text('customize'.tr())),
      ),
      WelcomeStage(
        header: Icon(
          Icons.favorite,
          size: iconSize,
        ),
        title: 'final_stage_text'.tr(),
        desc: 'final_stage_desc'.tr(),
      ),
    ];

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
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: pages[index],
                    );
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
