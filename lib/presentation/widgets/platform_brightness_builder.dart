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
  late Brightness platformBrightness;

  Brightness get _platformBrightness =>
      SchedulerBinding.instance.platformDispatcher.platformBrightness;

  @override
  void initState() {
    super.initState();
    platformBrightness = _platformBrightness;
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    setState(() {
      platformBrightness = _platformBrightness;
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, platformBrightness);
  }
}
