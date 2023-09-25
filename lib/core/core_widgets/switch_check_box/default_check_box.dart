import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class DefaultCheckBox extends StatelessWidget {
  const DefaultCheckBox({super.key, required this.value, required this.onChanged, required this.title});
  final bool value;
  final String title;
  final void Function(bool?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderManager.radius3,
              side: const BorderSide(
                  color: ColorsManager.secondaryDark,
                  width: 2,

              )
            ),
            activeColor: ColorsManager.secondaryDark,
              value: value,
              side: const BorderSide(
                color: ColorsManager.secondaryDark,
                width: 2,
              ),
              onChanged: onChanged
          ),
        ),
        const SizedBox(width: 15,),
        Expanded(
          child: Text(
          title,
          style: StyleManager.textStyle20,
          ),
        )
      ],
    );
  }
}
