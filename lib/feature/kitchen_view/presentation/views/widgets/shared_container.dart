import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class SharedContainer extends StatelessWidget {
  const SharedContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderManager.radius15,
        color: ColorsManager.primary,
      ),
      child: Center(
        child: Text(
          text,
          style: StyleManager.textStyleDark18.copyWith(
            color: ColorsManager.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
