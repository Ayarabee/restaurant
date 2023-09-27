import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/items/icon_row.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/items/quantity_row.dart';

import 'orange_rectangle_row.dart';

class QuickItemsBody extends StatelessWidget {
  const QuickItemsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
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
            child: const Row(
              children: [
                QuantityRow(),
                 OrangeRectangleRow(),
                Spacer(),
                IconRow(),
              ],
            ),
          ),
        ),
         ],
    );
  }
}
