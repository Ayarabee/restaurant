import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';

class DefaultDivider extends StatelessWidget {
  const DefaultDivider({
    super.key,
    this.padding = PaddingManager.divider,
    this.height
  });

  final EdgeInsetsGeometry padding;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Divider(
        height: height,
        color: ColorsManager.secondaryDark,
      ),
    );
  }
}
