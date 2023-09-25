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
            width: 30,
            decoration: BoxDecoration(
              color: ColorsManager.primary,
              borderRadius: BorderManager.radius5,
            ),
            child: const Icon(
              Icons.keyboard_arrow_up_outlined, color: ColorsManager.white,
            ),
          ),
        ),
        const SizedBox(height: 2,),
        InkWell(
          onTap: onMinus,
          child: Container(
            width: 30,
            decoration: BoxDecoration(
              color: ColorsManager.primary,
              borderRadius: BorderManager.radius5,
            ),
            child: const Icon(Icons.keyboard_arrow_down_outlined, color: ColorsManager.white,),
          ),
        )
      ],
    );
  }
}
