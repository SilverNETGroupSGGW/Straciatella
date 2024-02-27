import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/search_input/search_input_cubit.dart';

class LecturerTextField extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  LecturerTextField({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTapOutside: Platform.isIOS
          ? (event) => FocusManager.instance.primaryFocus?.unfocus()
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
            Icons.clear,
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
