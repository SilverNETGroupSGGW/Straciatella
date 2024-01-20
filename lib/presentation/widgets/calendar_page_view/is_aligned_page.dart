import 'package:flutter/widgets.dart';
import 'package:silvertimetable/helpers.dart';

class IsAlignedPage extends StatefulWidget {
  final PageController pageController;
  final int page;
  final double error;
  final Widget Function(BuildContext context, bool isAligned) builder;
  const IsAlignedPage({
    super.key,
    required this.pageController,
    required this.page,
    this.error = 0,
    required this.builder,
  });

  @override
  State<IsAlignedPage> createState() => _IsAlignedPageState();
}

class _IsAlignedPageState extends State<IsAlignedPage> {
  double? page;

  void setPage() {
    setState(() {
      page = widget.pageController.page;
    });
  }

  @override
  void initState() {
    widget.pageController.addListener(setPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool isAligned =
        ((page ?? 0) - widget.page).inBounds(-widget.error, widget.error);
    return widget.builder(context, isAligned);
  }

  @override
  void dispose() {
    widget.pageController.removeListener(setPage);
    super.dispose();
  }
}
