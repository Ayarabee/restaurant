import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class SearchDropDownFormField extends StatelessWidget {
  const SearchDropDownFormField(
      {Key? key, required this.controller, required this.text})
      : super(key: key);
  final TextEditingController controller;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: true,
      maxLines: null,
      cursorColor: ColorsManager.primary,
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        hintText: 'Search ...',
        hintStyle: StyleManager.textStyleDark18,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: ColorsManager.secondaryDark,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: ColorsManager.secondaryDark,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: ColorsManager.secondaryDark)),
      ),
    );
  }
}
