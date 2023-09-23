import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';

class DeleteIconWidget extends StatelessWidget {
  const DeleteIconWidget({super.key, required this.onPressed});
final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(
        Icons.cancel,
        size: 30,
        color: ColorsManager.greyLight,
      ),
    );
  }
}
