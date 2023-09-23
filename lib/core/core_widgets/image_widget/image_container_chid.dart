import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';

class ImageContainerChild extends StatelessWidget {
  const ImageContainerChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
            color: ColorsManager.blackOpacity,
            borderRadius: BorderManager.radius15,
          ),
          child: Center(
              child: SvgPicture.asset(
                AssetsManager.camera,
                height: 46,
                width: 46,
              )),
        ),
      ],
    );
  }
}
