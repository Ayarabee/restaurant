
import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class PurchasesTitleList extends StatelessWidget {
  const PurchasesTitleList({super.key, required this.titleList, required this.bodyWidth});
final List<String> titleList;
final double bodyWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for(int i=0;i<4;i++)
          buildText(i,i==3?true:false)
      ],
    );
  }

  Widget buildText(int i,bool isLast) {
    return SizedBox(
      width:isLast?90: bodyWidth/3.6,
          child: Row(
            children: [
              i==3?const Spacer():const SizedBox(),
              Text(titleList[i],style: StyleManager.textStyle20.copyWith(
                color: ColorsManager.primary,
              ),),
            ],
          ),
        );
  }
}
