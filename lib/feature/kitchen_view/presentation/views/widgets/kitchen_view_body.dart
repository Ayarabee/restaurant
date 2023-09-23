import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';

import 'total_items_amount.dart';
import 'total_items_details.dart';

class KitchenViewBody extends StatelessWidget {
  const KitchenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsManager.white,
          borderRadius: BorderManager.radius15,
          border: Border.all(
            color: ColorsManager.primary,
            width: 5,
          )),
      child: const DefaultBody(
        titleDivider: false,
        title: "إجمالي  الطلبات: 4",
        sideBarBody: TotalItemsAmount(),
          body: TotalItemsDetails()
      )
      // const Row(
      //   children: [
      //     TotalItemsAmount(),
      //     Expanded(child: TotalItemsDetails()),
      //   ],
      // ),
    );
  }
}
