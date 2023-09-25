import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class DefaultSwitch extends StatelessWidget {
  const DefaultSwitch(
      {super.key,
      required this.value,
      required this.title,
      required this.onChanged});
  final bool value;
  final String title;
  final void Function(bool?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
            activeColor: ColorsManager.primary,
            value: value,
            onChanged: onChanged),
        const SizedBox(
          width: 15,
        ),
        Text(
          title,
          style: StyleManager.textStyleDark24,
        )
      ],
    );
  }
}
