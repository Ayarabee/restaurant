import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/image_widget/edit_image.dart';
import 'package:restaurant/core/core_widgets/image_widget/delete_icon_widget.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, required this.onPressed, required this.image});
  final Function() onPressed;
final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        EditImage(image: image,),
        DeleteIconWidget(onPressed: onPressed,),
      ],
    );
  }
}
