import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class PlatformBrightnessBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, Brightness brightness) builder;
  const PlatformBrightnessBuilder({super.key, required this.builder});

  @override
  State<PlatformBrightnessBuilder> createState() =>
      _PlatformBrightnessBuilderState();
}

class _PlatformBrightnessBuilderState extends State<PlatformBrightnessBuilder>
    with WidgetsBindingObserver {
  late Brightness systemBrightness;

  Brightness get _systemBrightness =>
      SchedulerBinding.instance.platformDispatcher.platformBrightness;

  @override
  void initState() {
    super.initState();
    systemBrightness = _systemBrightness;
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    setState(() {
      systemBrightness = _systemBrightness;
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, systemBrightness);
  }
}
