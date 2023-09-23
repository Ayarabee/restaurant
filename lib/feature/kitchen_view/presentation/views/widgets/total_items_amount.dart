import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_buttons/no_hover_button.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'shared_order_row.dart';
import 'total_orders_drop_down.dart';

class TotalItemsAmount extends StatelessWidget {
  const TotalItemsAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration:   BoxDecoration(
        color: ColorsManager.secondary,
        borderRadius:const BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
        border: Border.all(
          color: ColorsManager.black,
             width: .2,
        )
        // border: Border(left: BorderSide(
        //   color: ColorsManager.black,
        //   width: 1,
        // )),
      ),
      child: ListView(
        children: [
          Text(
            "إجمالي  الطلبات: 4",
            style: StyleManager.textStyle36.copyWith(fontSize: 30),
          ),
          const SizedBox(
            height: 40,
          ),
          NoHoverButton(onPressed: (){}, text: "كميات الاصناف"),
          const SizedBox(height: 25,),
          const TotalOrdersDropDown(),
          const SizedBox(height: 10,),
          const SharedOrderRow(text: "حواوشي",num: "18",),
          const SizedBox(height: 10,),
          const SharedOrderRow(text: "سجق ليمون",num: "4",),
          const SizedBox(height: 10,),
          const SharedOrderRow(text: "بطاطس مقلية",num: "16",),
        ],
      ),
    );
  }
}
