import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:psggw/models/lesson.dart';
import 'package:psggw/models/settings.dart';
import 'package:psggw/models/adapters.dart';
import 'package:psggw/screens/timeline.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.registerAdapter(SettingsAdapter());
  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  @override
  void initState() {
    super.initState();
    ref.read(lessonsDataProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context) {
    Settings settings = ref.watch(settingsDataProvider);
    return MaterialApp(
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: settings.themeColor,
          brightness: Brightness.dark,
        ),
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: settings.themeColor,
          brightness: Brightness.light,
        ),
      ),
      themeMode: settings.themeMode,
      home: Timeline(),
    );
  }
}
