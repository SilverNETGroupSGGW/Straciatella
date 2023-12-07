import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:psggw/models/settings_model.dart';
import 'package:psggw/adapters/settings_adapter.dart';
import 'package:psggw/notifiers/credentials_provder.dart';
import 'package:psggw/notifiers/settings_provider.dart';
import 'package:psggw/screens/intro_screen/login_screen.dart';
import 'package:psggw/screens/intro_screen/welcome_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:psggw/screens/navbar_screen.dart';
import 'package:psggw/screens/settings_screen.dart';

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

class MainApp extends ConsumerStatefulWidget {
  MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  @override
  void initState() {
    appSettings = ref.read(credentialsProvider.notifier).init();
    super.initState();
  }

  late Future<void> appSettings;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: appSettings,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        Settings settings = ref.watch(settingsProvider);
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
          initialRoute: '/',
          routes: {
            '/timeline': (context) => NavbarScreen(index: 0),
            '/map': (context) => NavbarScreen(index: 1),
            '/welcome/intro': (context) => WelcomeScreen(),
            '/welcome/login': (context) => LoginScreen(),
            '/settings': (context) => SettingsScreen(),
          },
          title: "Plan WZIM",
          locale: settings.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          darkTheme: darkThemeData,
          theme: lightThemeData,
          themeMode: settings.themeMode,
          home: settings.firstRun ? WelcomeScreen() : NavbarScreen(index: 0),
        );
      },
    );
  }
}
