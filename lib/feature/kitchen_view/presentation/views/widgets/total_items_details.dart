import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';

import 'item_details_container.dart';

class TotalItemsDetails extends StatelessWidget {
  const TotalItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     color: ColorsManager.white,
      padding:PaddingManager.bodyPadding,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: ItemDetailsContainer()),
              SizedBox(width: 15,),
              Expanded(child: ItemDetailsContainer()),
              SizedBox(width: 15,),
              Expanded(child: ItemDetailsContainer()),
            ],
          ),

        ],
      ),
    );
  }
}
