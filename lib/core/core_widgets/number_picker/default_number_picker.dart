import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';

class DefaultNumberPicker extends StatelessWidget {
  const DefaultNumberPicker({super.key, required this.onAdd, required this.onMinus});

  final void Function() onAdd;
  final void Function() onMinus;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children:
      [
        InkWell(
          onTap: onAdd,
          child: Container(
            decoration: BoxDecoration(
              color: ColorsManager.primary,
              borderRadius: BorderManager.radius3,
            ),
            child: const Icon(Icons.keyboard_arrow_up, color: ColorsManager.white,),
          ),
        ),
        const SizedBox(height: 2,),
        InkWell(
          onTap: onMinus,
          child: Container(
            decoration: BoxDecoration(
              color: ColorsManager.primary,
              borderRadius: BorderManager.radius3,
            ),
            child: const Icon(Icons.keyboard_arrow_down, color: ColorsManager.white,),
          ),
        )
      ],
    );
  }
}
