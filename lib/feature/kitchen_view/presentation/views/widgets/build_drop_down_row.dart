import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class BuildDropDownRow extends StatelessWidget {
  const BuildDropDownRow({super.key, required this.onTap});
final Function()onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Icon(
              Icons.arrow_drop_down_outlined,
              color: ColorsManager.black,
            ),
          ),
          Text(
            "مكرونة كبدة",
            style: StyleManager.textStyleDark18.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Text(
            "24",
            style: StyleManager.textStyleDark18.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
