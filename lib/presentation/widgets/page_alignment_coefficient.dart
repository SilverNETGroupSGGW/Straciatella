import 'package:flutter/widgets.dart';
import 'package:silvertimetable/helpers.dart';

class PageAlignmentCoefficient extends StatefulWidget {
  final PageController pageController;
  final int page;
  final double errorMargin;
  final Curve curve;
  final Widget Function(BuildContext context, double coefficient) builder;
  const PageAlignmentCoefficient({
    super.key,
    required this.pageController,
    required this.page,
    this.errorMargin = 0,
    required this.builder,
    this.curve = Curves.easeOut,
  });

  @override
  State<PageAlignmentCoefficient> createState() =>
      _PageAlignmentCoefficientState();
}

class _PageAlignmentCoefficientState extends State<PageAlignmentCoefficient> {
  double? page;

  void setPage() {
    setState(() {
      page = widget.pageController.pageUnclamped;
    });
  }

  @override
  void initState() {
    widget.pageController.addListener(setPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final coe = (page ?? widget.pageController.initialPage)
        .alignmentCoe(widget.page.toDouble(), widget.errorMargin);

    final t = widget.curve.transform(coe);
    return widget.builder(context, t);
  }

  @override
  void dispose() {
    widget.pageController.removeListener(setPage);
    super.dispose();
  }
}
