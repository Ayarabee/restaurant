import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/nav_bar/default_nav_bar_list.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';

class DefaultNavBar extends StatelessWidget {
  const DefaultNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingManager.fromFieldMargin,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(
            textScaleFactor:
                MediaQuery.of(context).size.width > 700 ? 1 : 0.65),
        child: Material(
          elevation: 3,
          borderRadius: BorderManager.radius15,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10,
            ),
            // padding: PaddingManager.navBarPadding,
            decoration: BoxDecoration(
              color: ColorsManager.secondary,
              borderRadius: BorderManager.radius15,
            ),
            child: const DefaultNavBarList(),
          ),
        ),
      ),
    );
  }
}
