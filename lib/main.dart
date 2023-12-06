import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:psggw/models/settings_model.dart';
import 'package:psggw/adapters/settings_adapter.dart';
import 'package:psggw/notifiers/credentials_provder.dart';
import 'package:psggw/notifiers/settings_provider.dart';
import 'package:psggw/screens/intro/welcome_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:psggw/screens/timeline_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(SettingsAdapter());
  await EasyLocalization.ensureInitialized();
  runApp(
    ProviderScope(
        child: EasyLocalization(
      child: MainApp(),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('pl', 'PL'),
      ],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
    )),
  );
}

class MainApp extends ConsumerWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> appStarted = ref.read(credentialsProvider.notifier).init();

    Settings settings = ref.read(settingsProvider);
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
      title: "Plan WZIM",
      locale: settings.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      darkTheme: darkThemeData,
      theme: lightThemeData,
      themeMode: settings.themeMode,
      home: FutureBuilder(
        future: appStarted,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return settings.firstRun ? WelcomeScreen() : Timeline();
        },
      ),
    );
  }
}
