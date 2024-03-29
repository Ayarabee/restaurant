import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class NoHoverButton extends StatelessWidget {
  const NoHoverButton({super.key, required this.onPressed, required this.text});
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      child: MaterialButton(
        onPressed: onPressed,
        shape: OutlineInputBorder(
            borderRadius: BorderManager.radius15,
            borderSide: const BorderSide(
                color: Colors.transparent
            )
        ),
        color: ColorsManager.primary,
        child: Text(
          text,
          style: StyleManager.textStyleDark24.copyWith(
            color: ColorsManager.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
