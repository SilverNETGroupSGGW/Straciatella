import 'package:dynamic_color/dynamic_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:silvertimetable/app_scroll_behavior.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/fakes/sggw_hub_repo_fake.dart';
import 'package:silvertimetable/data/register_adapters.dart';
import 'package:silvertimetable/data/repositories/sggw_hub_repo.dart';
import 'package:silvertimetable/logic/register_adapters.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/providers_tree.dart';
import 'package:silvertimetable/router.dart';
import 'package:silvertimetable/themes/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt.instance.registerSingleton<SggwHubRepo>(
    kDebugMode ? FakeSggwHubRepo() : SggwHubRepo(),
  );

  await Hive.initFlutter();
  registerLogicDataAdapters();
  registerDataAdapters();

  Hive.deleteBoxFromDisk(hiveBoxName);
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

  @override
  Widget build(BuildContext context) {
    return ProvidersTree(
      settingsCubit: widget.settings,
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, settings) {
          return DynamicColorBuilder(
            builder: (lightDynamic, darkDynamic) {
              return MaterialApp(
                scrollBehavior: AppScrollBehavior(),
                title: appName,
                scaffoldMessengerKey: scaffoldMessengerKey,
                navigatorKey: navigatorKey,
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
                initialRoute:
                    settings.isFirstRun ? RouteNames.welcome : RouteNames.faved,
              );
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    widget.settings.close();
    super.dispose();
  }
}
