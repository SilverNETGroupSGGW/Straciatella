import 'package:dynamic_color/dynamic_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/register_adapters.dart';
import 'package:silvertimetable/logic/faved_schedules/faved_schedules_cubit.dart';
import 'package:silvertimetable/logic/register_adapters.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/router.dart';
import 'package:silvertimetable/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  registerLogicDataAdapters();
  registerDataAdapters();
  await Hive.openBox(hiveBoxName);
  await EasyLocalization.ensureInitialized();
  final SettingsCubit settings = SettingsCubit()..loadSettings();

  runApp(
    EasyLocalization(
      supportedLocales: supportedLocale.map((e) => e.locale).toList(),
      path: 'assets/translations',
      fallbackLocale: fallbackLocale,
      child: MainApp(settings: settings),
    ),
  );
}

class MainApp extends StatefulWidget {
  final SettingsCubit settings;

  const MainApp({super.key, required this.settings});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _appRouter = AppRouter();
  final _scheduleManager = ScheduleManagerBloc()
    ..add(const ScheduleManagerEvent.init());

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsCubit>.value(
      value: widget.settings,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                FavedSchedulesCubit(_scheduleManager)..loadFavedSchedules(),
          ),
          BlocProvider.value(
            value: _scheduleManager,
          ),
        ],
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, settings) {
            return DynamicColorBuilder(
              builder: (lightDynamic, darkDynamic) {
                return MaterialApp(
                  title: appName,
                  theme: getThemeData(
                    settings,
                    deviceColorScheme: lightDynamic,
                  ),
                  darkTheme: getThemeData(
                    settings,
                    deviceColorScheme: darkDynamic,
                    brightness: Brightness.dark,
                  ),
                  themeMode: settings.themeMode,
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  onGenerateRoute: _appRouter.onGenerateRoute,
                  initialRoute: RouteNames.timeline,
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    widget.settings.close();
    super.dispose();
  }
}
