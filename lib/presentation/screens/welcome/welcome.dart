import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/page_dots.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/welcome_stage.dart';
import 'package:silvertimetable/router.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  final pageController = PageController();

  int currentPage = 0;
  static const iconSize = 150.0;
  late final List<({AnimationController controller, bool wasShown})>
      animationControllers;

  @override
  void initState() {
    animationControllers = List.generate(
      6,
      (index) => (
        controller: AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 500),
        ),
        wasShown: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      WelcomeStage(
        animationController: animationControllers[0].controller,
        header: const Image(
          image: AssetImage('assets/images/icon.png'),
          width: 200,
          height: 200,
        ),
        title: LocaleKeys.welcome_stage_text.tr(),
        desc: LocaleKeys.welcome_stage_desc.tr(),
      ),
      WelcomeStage(
        animationController: animationControllers[1].controller,
        header: const Icon(
          Icons.search,
          size: iconSize,
        ),
        title: LocaleKeys.schedules_stage_text.tr(),
        desc: LocaleKeys.schedules_stage_desc.tr(),
      ),
      WelcomeStage(
        animationController: animationControllers[2].controller,
        header: const Icon(
          // TODO: Change icon to off depending on the permission
          Icons.notifications,
          size: iconSize,
        ),
        title: LocaleKeys.notifications_stage_text.tr(),
        desc: LocaleKeys.notifications_stage_desc.tr(),
        leading: FilledButton(
          onPressed: () {
            // TODO: Ask for notification permission
          },
          child: Text(LocaleKeys.allow_notifications.tr()),
        ),
      ),
      WelcomeStage(
        animationController: animationControllers[3].controller,
        header: const Icon(
          Icons.map,
          size: iconSize,
        ),
        title: LocaleKeys.map_stage_text.tr(),
        desc: LocaleKeys.map_stage_desc.tr(),
      ),
      WelcomeStage(
        animationController: animationControllers[4].controller,
        header: const Icon(
          Icons.palette,
          size: iconSize,
        ),
        title: LocaleKeys.customization_stage_text.tr(),
        desc: LocaleKeys.customization_stage_desc.tr(),
        leading: FilledButton(
          onPressed: () {
            // TODO: Navigate to theme screen instead of settings
            Navigator.of(context).pushNamed(RouteNames.settings);
          },
          child: Text(LocaleKeys.customize.tr()),
        ),
      ),
      WelcomeStage(
        animationController: animationControllers[5].controller,
        header: const Icon(
          Icons.favorite,
          size: iconSize,
        ),
        title: LocaleKeys.final_stage_text.tr(),
        desc: LocaleKeys.final_stage_desc.tr(),
      ),
    ];

    animationControllers[0].controller.forward();

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: pages[index],
                    );
                  },
                  onPageChanged: (index) {
                    if (!animationControllers[index].wasShown) {
                      animationControllers[index].controller.forward();
                      animationControllers[index] = (
                        controller: animationControllers[index].controller,
                        wasShown: true,
                      );
                    }
                    setState(() {
                      currentPage = index;
                    });
                  },
                ),
              ),
              PageDots(
                currentPage: currentPage,
                controller: pageController,
                dotCount: pages.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
