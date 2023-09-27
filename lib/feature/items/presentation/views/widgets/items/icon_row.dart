import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restaurant/feature/items/presentation/views/edit_item_view.dart';
import 'package:restaurant/feature/items/presentation/views/item_details_view.dart';

import '../../../../../../core/resources_manager/assets_manager.dart';

class IconRow extends StatelessWidget {
  const IconRow({super.key,});

  @override
  Widget build(BuildContext context) {
     return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 25,
          ),
          child: InkWell(
            onTap: (){
              Get.to(()=> const ItemDetailsView());
            },

            child: SvgPicture.asset(
              AssetsManager.more,
              width: 12,
              height:3 ,
            ),
          ),
        ),
         Padding(
           padding: const EdgeInsets.symmetric(
               vertical: 5.0,
             horizontal: 40,
           ),
           child: InkWell(
             onTap: (){
               Get.to(()=> const EditItemView());
             },
            child: SvgPicture.asset(
              AssetsManager.edit,
              width: 12,
              height:12 ,
            ),
        ),
         ),
         Padding(
           padding: const EdgeInsets.only(
             top: 5.0,
             bottom: 5,
             right: 25,
           ),
           child: InkWell(
             onTap: (){

             },
            child: SvgPicture.asset(
              AssetsManager.delete,
              width: 16,
              height:16 ,
            ),
        ),
         ),
      ],
    );
  }
}
