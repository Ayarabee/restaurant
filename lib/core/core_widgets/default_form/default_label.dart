import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class DefaultLabel extends StatelessWidget {
    const DefaultLabel({
    super.key,
    required this.text,
   });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: StyleManager.textStyle16,
    );
  }
}
