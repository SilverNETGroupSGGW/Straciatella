import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:psggw/adapters/settings_adapter.dart';
import 'package:psggw/models/account_model/bloc/account_bloc.dart';
import 'package:psggw/models/settings_model/bloc/settings_bloc.dart';
import 'package:psggw/models/settings_model/settings.dart';
import 'package:psggw/router.dart';
import 'package:psggw/screens/intro_screen/welcome_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:psggw/screens/navbar_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(SettingsAdapter());
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      child: MainApp(key: GlobalKey()),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('pl', 'PL'),
      ],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
    ),
  );
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsBloc>(
          create: (context) =>
              SettingsBloc()..add(SettingsEvent.loadRequested()),
        ),
        BlocProvider<AccountBloc>(
          create: (context) => AccountBloc()
            ..add(AccountEvent.refreshTokenFromStorageRequested()),
        )
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => MaterialApp(
              title: 'PSGGW',
              home: Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
            loaded: (state) {
              Settings settings = state.maybeMap(
                loaded: (state) => state.settings,
                orElse: () => Settings.empty(),
              );

              var darkThemeData = ThemeData(
                colorScheme: ColorScheme.fromSeed(
                  seedColor: settings.themeColor,
                  brightness: Brightness.dark,
                ),
              );

              var lightThemeData = ThemeData(
                colorScheme: ColorScheme.fromSeed(
                  seedColor: settings.themeColor,
                  brightness: Brightness.light,
                ),
              );

              return MaterialApp(
                title: 'PSGGW',
                theme: lightThemeData,
                darkTheme: darkThemeData,
                themeMode: settings.themeMode,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: settings.locale,
                onGenerateRoute: _appRouter.onGenerateRoute,
                initialRoute: settings.isFirstRun
                    ? RouteNames.welcome
                    : RouteNames.timeline,
              );
            },
          );
        },
      ),
    );
  }
}
