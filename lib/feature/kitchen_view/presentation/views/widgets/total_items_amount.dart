import 'package:flutter/material.dart';
import 'build_drop_down_row.dart';
import 'shared_container.dart';
import 'shared_order_row.dart';
import 'total_orders_drop_down.dart';

class TotalItemsAmount extends StatelessWidget {
  const TotalItemsAmount({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>>ordersList=[
      {
        "text":"حواوشي",
        "num":"18",
      },
      {
        "text":"سجق ليمون",
        "num":"4",
      },
      {
        "text":"بطاطس مقلية",
        "num":"16",
      },
    ];
    return ListView(
      children: [
        const SizedBox(height: 40,),
        const SharedContainer(text: "كميات الاصناف"),
        const SizedBox(height: 25,),
        const TotalOrdersDropDown(),
        const SizedBox(height: 10,),
        for(int i=0;i<ordersList.length;i++)
         Padding(
          padding: EdgeInsets.only(bottom:i< ordersList.length-1?10.0:0),
          child: BuildDropDownRow(text: ordersList[i]['text'],num:  ordersList[i]['num'],onTap: (){},),
        ),
      ],
    );
  }
}
