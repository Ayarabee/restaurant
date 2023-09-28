import 'package:flutter/material.dart';
import '../../../../../../core/resources_manager/colors_manager.dart';
import '../../../../../../core/resources_manager/style_manager.dart';

class QuantityRow extends StatelessWidget {
  const QuantityRow({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding:const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 15,
      ) ,
      decoration: BoxDecoration(
        color: ColorsManager.secondary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Row(
        children: [
          Text(
            '1',
            style: StyleManager.textStyleDark16,
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 150.0),
            child: Text(
              'مكرونة',
              style: StyleManager.textStyleDark16,
            ),
          ),
           Text(
            '25',
            style: StyleManager.textStyleDark16,
          ),
         ],
      ),
    );
  }
}
