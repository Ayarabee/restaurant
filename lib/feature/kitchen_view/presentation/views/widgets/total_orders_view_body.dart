import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';

import 'total_items_amount.dart';
import 'total_items_details.dart';

class TotalOrdersViewBody extends StatelessWidget {
  const TotalOrdersViewBody({super.key});

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
      child: const Row(
        children: [
          TotalItemsAmount(),
          Expanded(child: TotalItemsDetails()),
        ],
      ),
    );
  }
}
