import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/widgets/synced_page_view/synced_page_views.dart';

class SyncedPageView extends StatefulWidget {
  final PageController? controller;
  final PageView Function(
    BuildContext context,
    PageController controller,
  ) builder;

  const SyncedPageView({
    super.key,
    this.controller,
    required this.builder,
  });

  @override
  State<SyncedPageView> createState() => _SyncedPageViewState();
}

class _SyncedPageViewState extends State<SyncedPageView> {
  late final PageController _pageController =
      widget.controller ?? PageController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SyncedPageViewCubit, SyncedPageViewState>(
      listener: (context, state) {
        if (state.invoker != this) {
          final scaledPixels = state.pixels * _pageController.viewportFraction;
          _pageController.position.correctPixels(scaledPixels);
          _pageController.position.notifyListeners();
        }
      },
      child: NotificationListener(
        onNotification: (notif) {
          if (notif is ScrollUpdateNotification) {
            final scaledPixels = _pageController.position.pixels /
                _pageController.viewportFraction;
            context.read<SyncedPageViewCubit>().setPixels(scaledPixels, this);
          }
          return true;
        },
        child: widget.builder(context, _pageController),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
