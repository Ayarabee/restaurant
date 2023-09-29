import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/home/presentation/cubit/home_cubit.dart';

import 'nav_bar_data.dart';

class DefaultNavBarList extends StatefulWidget {
  const DefaultNavBarList({super.key});

  @override
  State<DefaultNavBarList> createState() => _DefaultNavBarListState();
}

class _DefaultNavBarListState extends State<DefaultNavBarList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < NavBarData.listOfIcons.length; i++)
          buildListItem(i)
      ],
    );
  }

  Widget buildListItem(int i) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Expanded(
          child: InkWell(
            onTap: () {
              HomeCubit.get(context).changeNavBar(i, context);
            },
            child: Column(
              children: [
                SvgPicture.asset(
                  NavBarData.listOfIcons[i],
                  width: 20,
                  height: 22,
                  color: i == HomeCubit.get(context).currentNavBarView
                      ? ColorsManager.primary
                      : ColorsManager.black,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  NavBarData.listOfStrings[i],
                  style: i == HomeCubit.get(context).currentNavBarView
                      ? StyleManager.textStyle14.copyWith(
                    color: ColorsManager.primary,
                    fontWeight: FontWeight.w400,
                  )
                      : StyleManager.textStyle14.copyWith(
                    color: ColorsManager.black,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
