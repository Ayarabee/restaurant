import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

import 'nav_bar_data.dart';

class DefaultNavBarList extends StatefulWidget {
  const DefaultNavBarList({super.key});

  @override
  State<DefaultNavBarList> createState() => _DefaultNavBarListState();
}

class _DefaultNavBarListState extends State<DefaultNavBarList> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for(int i=0;i<NavBarData.listOfIcons.length;i++)
          buildListItem(i)
      ],
    );
  }

  Widget buildListItem(int i) {
    return Expanded(
      child: InkWell(
            onTap: () {
              setState(() {
                currentIndex = i;
              });
            },
            child: Column(
              children: [
                SvgPicture.asset(
                  NavBarData.listOfIcons[i],
                  width: 26,
                  height: 28,
                  color: i == currentIndex
                      ? ColorsManager.primary
                      : ColorsManager.black,
                ),
                const SizedBox(height: 17,),
                Text(
                  NavBarData.listOfStrings[i],
                  style:  i==currentIndex?StyleManager.textStyleDark18.copyWith(
                      color: ColorsManager.primary
                  ):StyleManager.textStyleDark18,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
    );
  }
}
