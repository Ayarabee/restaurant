import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class TitleDataContainer extends StatelessWidget {
  const TitleDataContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: PaddingManager.itemDetailsPadding,
      decoration: BoxDecoration(
        color: ColorsManager.blue,
        borderRadius: BorderManager.radius15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTitleRow(),
          const SizedBox(height: 3,),
          Text(
            "مساكن : 010123456789",
            style: StyleManager.textStyleLight18.copyWith(
              fontSize: 15,
            ),
          ),
          buildTimerAndPriceRow(),
        ],
      ),
    );
  }

  Row buildTimerAndPriceRow() {
    return Row(
          children: [
            Text(
              "00:17:14",
              style: StyleManager.textStyleLight18.copyWith(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            const Icon(Icons.timer_outlined,color: ColorsManager.white,size: 15,),
            const Spacer(),
            Text(
              " 160.00جنيه ",
              style: StyleManager.textStylePrimary24
                  .copyWith(fontSize: 15),
            )
          ],
        );
  }

  Row buildTitleRow() {
    return Row(
          children: [
            const Spacer(),
            Text(
              "دليفري",
              style: StyleManager.textStylePrimary24.copyWith(
                color: ColorsManager.white,
                fontSize: 18,
              ),
            ),
            const Spacer(),
            Text(
              "#138",
              style: StyleManager.textStylePrimary24.copyWith(
                color: ColorsManager.white,
                fontSize: 18,
              ),
            ),
          ],
        );
  }
}
