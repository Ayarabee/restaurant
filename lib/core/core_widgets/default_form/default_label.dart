import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class DefaultLabel extends StatelessWidget {
    DefaultLabel({
    super.key,
    required this.text,
    this.style=StyleManager.textStyleDark24,
   });

  final String text;
  TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
