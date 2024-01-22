import 'package:flutter/widgets.dart';
import 'package:silvertimetable/helpers.dart';

class PageAlignmentCoefficient extends StatefulWidget {
  final PageController pageController;
  final int page;
  final double error;
  final Widget Function(BuildContext context, double coefficient) builder;
  const PageAlignmentCoefficient({
    super.key,
    required this.pageController,
    required this.page,
    this.error = 0,
    required this.builder,
  });

  @override
  State<PageAlignmentCoefficient> createState() =>
      _PageAlignmentCoefficientState();
}

class _PageAlignmentCoefficientState extends State<PageAlignmentCoefficient> {
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
    const curve = Curves.easeOut;
    final coe = (page ?? 0).alignmentCoe(widget.page.toDouble(), widget.error);

    final t = curve.transform(coe);
    return widget.builder(context, t);
  }

  @override
  void dispose() {
    widget.pageController.removeListener(setPage);
    super.dispose();
  }
}
