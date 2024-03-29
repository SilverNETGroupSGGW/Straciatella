import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/lecturer_schedule/cubits/search_input/search_input_cubit.dart';

class LecturerScheduleTextField extends StatefulWidget {
  @override
  State<LecturerScheduleTextField> createState() =>
      _LecturerScheduleTextFieldState();
}

class _LecturerScheduleTextFieldState extends State<LecturerScheduleTextField> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTapOutside: (!kIsWeb && Platform.isIOS)
          ? (_) => FocusManager.instance.primaryFocus?.unfocus()
          : null,
      onChanged: (_) =>
          context.read<SearchInputCubit>().inputTextChanged(controller.text),
      style: const TextStyle(fontSize: 20),
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'search'.tr(),
        hintStyle: const TextStyle(fontSize: 22),
        border: InputBorder.none,
        suffix: IconButton(
          icon: const Icon(
            Symbols.clear,
            size: 28,
          ),
          color: Colors.grey,
          onPressed: () {
            controller.text = '';
            context.read<SearchInputCubit>().inputTextChanged(controller.text);
          },
        ),
      ),
    );
  }
}
