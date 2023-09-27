import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class QuickItemsBody extends StatelessWidget {
  const QuickItemsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            vertical: 10,
          ),
          child: Container(
            padding: const EdgeInsets.only(
                left: 10,
            ),
            decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow:  [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding:const EdgeInsets.symmetric(
                       vertical: 5,
                      horizontal: 10,
                    ) ,
                    color: ColorsManager.secondary,
                    child: const Row(
                      children: [
                      Text(
                          '1',
                        style: StyleManager.textStyleDark16,
                      ),
                         Spacer(),
                        Text(
                          'مكرونة',
                        style: StyleManager.textStyleDark16,
                      ),
                        Spacer(),
                        Text(
                          '25',
                        style: StyleManager.textStyleDark16,
                      ),
                    ],),
                  ),
                ),
                 Container(
                   padding: const EdgeInsets.all(1),
                   decoration: BoxDecoration(
                     color: ColorsManager.secondary,
                     borderRadius: BorderRadius.circular(5),
                     boxShadow:  [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.3),
                         spreadRadius: 5,
                         blurRadius: 7,
                         offset: const Offset(0, 3),
                       ),
                     ],
                   ),
                   child:Row(
                     children: [
                       SvgPicture.asset(
                         AssetsManager.orangeRectangle,
                         width: 15,
                         height:17 ,
                       ),
                       const SizedBox(width: 2),
                       SvgPicture.asset(
                         AssetsManager.orangeRectangle,
                         width: 15,
                         height:17 ,
                       ),
                       const SizedBox(width: 2),
                       SvgPicture.asset(
                         AssetsManager.orangeRectangle,
                         width: 15,
                         height:17 ,
                       ),
                       const SizedBox(width: 2),
                       SvgPicture.asset(
                         AssetsManager.orangeRectangle,
                         width: 15,
                         height:17 ,
                       ),
                       const SizedBox(width: 2),
                       SvgPicture.asset(
                         AssetsManager.orangeRectangle,
                         width: 15,
                         height:17 ,
                       ),
                       const SizedBox(width: 2),
                       SvgPicture.asset(
                         AssetsManager.orangeRectangle,
                         width: 15,
                         height:17 ,
                       ),
                     ],
                   ) ,
                 ),
                 Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AssetsManager.more,
                        width: 15,
                        height:3 ,
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        AssetsManager.edit,
                        width: 15,
                        height:15 ,
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        AssetsManager.delete,
                        width: 18,
                        height:18 ,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            vertical: 10,
          ),
          child: Container(
            padding: const EdgeInsets.only(
                left: 10,
            ),
            decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow:  [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding:const EdgeInsets.symmetric(
                       vertical: 5,
                      horizontal: 10,
                    ) ,
                    color: ColorsManager.secondary,
                    child: const Row(
                      children: [
                      Text(
                          '1',
                        style: StyleManager.textStyleDark16,
                      ),
                         Spacer(),
                        Text(
                          'مكرونة',
                        style: StyleManager.textStyleDark16,
                      ),
                        Spacer(),
                        Text(
                          '25',
                        style: StyleManager.textStyleDark16,
                      ),
                    ],),
                  ),
                ),
                 Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AssetsManager.more,
                        width: 15,
                        height:3 ,
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        AssetsManager.edit,
                        width: 15,
                        height:15 ,
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        AssetsManager.delete,
                        width: 18,
                        height:18 ,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
       ],
    );
  }
}
