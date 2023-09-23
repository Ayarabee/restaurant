import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/feature/kitchen_view/presentation/views/widgets/shared_order_row.dart';
import 'package:restaurant/feature/kitchen_view/presentation/views/widgets/title_data_continer.dart';

class ItemDetailsContainer extends StatelessWidget {
  const ItemDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>>ordersList=[
      {
        "text":"مكرونة كبدة صلصة",
        "num":"3",
      },
      {
        "text":"مكرونة كبدة حار",
        "num":"2",
      },
      {
        "text":"حواوشي",
        "num":"5",
      },
      {
        "text":"سجق ليمون",
        "num":"1",
      },
      {
        "text":"بطاطس مقلية",
        "num":"4",
      },
    ];
    return Container(
      height: 320,
      decoration: BoxDecoration(
        borderRadius: BorderManager.radius15,
        border: Border.all(
          color: ColorsManager.blue,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleDataContainer(),
          const SizedBox(height: 5,),
          Padding(
            padding: PaddingManager.itemDetailsPadding,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("الاصناف",style: StyleManager.textStyleLight18.copyWith(
                      color: ColorsManager.primary,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),),
                    const Spacer(),
                    Text("5",style: StyleManager.textStyleLight18.copyWith(
                      color: ColorsManager.primary,
                      fontWeight: FontWeight.normal,
                    ),),
                  ],
                ),
                const SizedBox(height: 5,),
                for(int i=0;i<ordersList.length;i++)
                  Padding(
                    padding: EdgeInsets.only(bottom:i< ordersList.length-1?5.0:0),
                    child: SharedOrderRow(text: ordersList[i]['text'],num:  ordersList[i]['num'],),
                  ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
