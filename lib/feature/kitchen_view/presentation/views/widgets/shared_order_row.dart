
import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class SharedOrderRow extends StatelessWidget {
  const SharedOrderRow({super.key, required this.text, required this.num, this.isGrey=false});
final String text;
final String num;
final bool? isGrey;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style:isGrey!? StyleManager.textStyleDark18.copyWith(
            color: ColorsManager.secondaryDark2,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ):StyleManager.textStyleDark24.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        const Spacer(),
        Text(
          num,
          style: isGrey!? StyleManager.textStyleDark18.copyWith(
            color: ColorsManager.secondaryDark2,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ):StyleManager.textStyleDark24.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
