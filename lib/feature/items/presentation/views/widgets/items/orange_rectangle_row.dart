import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/resources_manager/assets_manager.dart';
import '../../../../../../core/resources_manager/colors_manager.dart';

class OrangeRectangleRow extends StatelessWidget {
  const OrangeRectangleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: ColorsManager.secondary,
        borderRadius: BorderRadius.circular(6),
        boxShadow:    [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child:Row(
        children: [
          SvgPicture.asset(
            AssetsManager.orangeRectangle,
            width: 30,
            height:20 ,
          ),
          const SizedBox(width: 2),
          SvgPicture.asset(
            AssetsManager.orangeRectangle,
            width: 30,
            height:20 ,
          ),
          const SizedBox(width: 2),
          SvgPicture.asset(
            AssetsManager.orangeRectangle,
            width: 30,
            height:20 ,
          ),
          const SizedBox(width: 2),
          SvgPicture.asset(
            AssetsManager.orangeRectangle,
            width: 30,
            height:20 ,
          ),
          const SizedBox(width: 2),
          SvgPicture.asset(
            AssetsManager.orangeRectangle,
            width: 30,
            height:20 ,
          ),
          const SizedBox(width: 2),
          SvgPicture.asset(
            AssetsManager.orangeRectangle,
            width: 30,
            height:20 ,
          ),
        ],
      ) ,
    );
  }
}
