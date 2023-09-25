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
      child:  ListView(
        children: const [
          Row(
            children: [
              Expanded(child: ItemDetailsContainer(color: ColorsManager.blue,title: "دليفري",)),
              SizedBox(width: 15,),
              Expanded(child: ItemDetailsContainer(color: ColorsManager.cyan,title: "صالة")),
              SizedBox(width: 15,),
              Expanded(child: ItemDetailsContainer(color: ColorsManager.black,title: "استلام")),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child: ItemDetailsContainer(color: ColorsManager.grey,title: "تيك اواى")),
              SizedBox(width: 15,),
              Expanded(child: SizedBox()),
              SizedBox(width: 15,),
              Expanded(child: SizedBox()),
            ],
          ),

        ],
      ),
    );
  }
}
