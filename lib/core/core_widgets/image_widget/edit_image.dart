import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';

import 'image_container_chid.dart';

class EditImage extends StatelessWidget {
  const EditImage({super.key, required this.image, this.addImage=false});
  final String image;
 final bool? addImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      margin: const EdgeInsetsDirectional.only(
          start: 8, top:15),
      decoration: BoxDecoration(
        borderRadius: BorderManager.radius15,
        image: DecorationImage(
          // TODO: will be changed
          image: AssetImage(
            image,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child:addImage!?const SizedBox(): const ImageContainerChild(),
    );
  }
}
