
import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/product/data/models/items_table_model.dart';

class PurchasesListItem extends StatelessWidget {
  const PurchasesListItem({super.key, required this.items, required this.bodyWidth});
  final ItemsTableMode items;
  final double bodyWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          buildText(text: items.product!,context: context),
          buildText(text: items.amount!,context: context),
          buildText(text: items.unit!,context: context),
          const Spacer(),
          buildText(text: items.total!,context: context,isLast: true,),
      ],
    );
  }

  Widget buildText({required String text,required BuildContext context,bool? isLast=false,}) {
    return SizedBox(
    width:isLast!?100: bodyWidth/3.5,
      child: Text(text,style: StyleManager.textStyle20,));
  }
}
