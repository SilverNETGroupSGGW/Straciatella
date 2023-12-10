import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:psggw/constants.dart';
import 'package:psggw/data/adapters/register_adapters.dart';
import 'package:psggw/logic/account/account_bloc.dart';
import 'package:psggw/logic/settings/settings_bloc.dart';
import 'package:psggw/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  registerSettingsAdapters();
  registerDataAdapters();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      child: MainApp(),
      supportedLocales: supportedLocale.map((e) => e.locale).toList(),
      path: 'assets/translations',
      fallbackLocale: fallbackLocale,
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
          create: (context) => SettingsBloc()..add(SettingsEvent.init()),
        ),
        BlocProvider<AccountBloc>(
          create: (context) => AccountBloc()
            ..add(AccountEvent.refreshTokenFromStorageRequested()),
        )
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          final theme = state.mapOrNull(
              loaded: (settings) => getLightTheme(settings.themeColor));
          final darkTheme = state.mapOrNull(
              loaded: (settings) => getDarkTheme(settings.themeColor));
          final themeMode =
              state.mapOrNull(loaded: (settings) => settings.themeMode);
          return MaterialApp(
              title: appName,
              theme: theme,
              darkTheme: darkTheme,
              themeMode: themeMode,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              onGenerateRoute: _appRouter.onGenerateRoute,
              initialRoute: RouteNames.loading);
        },
      ),
    );
  }
}
