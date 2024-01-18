import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/widgets/calendar_page_view/calendar_page_controller.dart';

class CalendarPagePicker extends StatefulWidget implements PreferredSizeWidget {
  const CalendarPagePicker({super.key});

  @override
  State<CalendarPagePicker> createState() => _CalendarPagePickerState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}

class _CalendarPagePickerState extends State<CalendarPagePicker> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: widget.preferredSize.height),
      child: BlocListener<CalendarPageCubit, CalendarPageCubitState>(
        listener: (context, state) {
          if (state.invoker == this) return;

          _pageController.animateToPage(
            state.page,
            duration: const Duration(milliseconds: 200),
            curve: Curves.decelerate,
          );
        },
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: (page) =>
              context.read<CalendarPageCubit>().setPage(page, this),
          itemBuilder: (_, page) => Center(
            child: Text("Date: $page"),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
