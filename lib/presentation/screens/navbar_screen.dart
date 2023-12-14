import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/data/mocks/schedules.dart';
import 'package:psggw/data/models/lesson/lesson.dart';
import 'package:psggw/data/models/schedule/schedule.dart';
import 'package:psggw/logic/account/account_bloc.dart';
import 'package:psggw/presentation/screens/map_screen.dart';
import 'package:psggw/presentation/widgets/timeline/timeline.dart';

class NavBarScreen extends StatefulWidget {
  NavBarScreen({super.key, required this.index});
  final int index;
  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  @override
  void initState() {
    selectedIndex = widget.index;
    super.initState();
  }

  late int selectedIndex;
  Schedule schedule = schedules[0];

  @override
  Widget build(BuildContext context) {
    List<DayOfWeek> days = [];
    schedule.lessons.forEach((element) {
      if (!days.contains(element.day)) {
        days.add(element.day);
      }
    });

    bool isTimeline = selectedIndex == 0;
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          loggedOut: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('not_logged_in'.tr()),
              ),
            );
          },
          loggedIn: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('login_successful'.tr()),
              ),
            );
          },
        );
      },
      listenWhen: (previous, current) {
        return current.maybeMap(
          orElse: () => false,
          loggedOut: (_) => true,
          loggedIn: (_) => true,
        );
      },
      child: DefaultTabController(
        length: days.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(isTimeline ? 'timeline'.tr() : 'map'.tr()),
            actions: [
              SettingsButton(),
            ],
            bottom: isTimeline
                ? TabBar(
                    tabs: days
                        .map(
                          (e) => Tab(
                            text: e.name.tr(),
                          ),
                        )
                        .toList(),
                  )
                : null,
          ),
          body: isTimeline
              ? TabBarView(
                  children: days.map(
                    (day) {
                      return Timeline(
                        lessons: schedule.lessons
                            .where((element) => element.day == day)
                            .toList(),
                      );
                    },
                  ).toList(),
                )
              : MapScreen(),
          bottomNavigationBar: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: [
              NavigationDestination(
                icon: Icon(
                    isTimeline ? Icons.dashboard : Icons.dashboard_outlined),
                label: 'timeline'.tr(),
              ),
              NavigationDestination(
                icon: Icon(isTimeline ? Icons.map_outlined : Icons.map),
                label: 'map'.tr(),
              ),
            ],
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          '/settings',
        );
      },
      icon: Icon(Icons.settings),
    );
  }
}
