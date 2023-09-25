import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class TitleDataContainer extends StatelessWidget {
  const TitleDataContainer({super.key, required this.title, required this.color});
final String title;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: PaddingManager.itemDetailsPadding,
      decoration: BoxDecoration(
        color: color,
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
              fontSize: 13,
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
                fontSize: 13,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            const Icon(Icons.timer_outlined,color: ColorsManager.white,size: 13,),
            const Spacer(),
            Text(
              " 160.00جنيه ",
              style: StyleManager.textStylePrimary24
                  .copyWith(fontSize: 13),
            )
          ],
        );
  }

  Row buildTitleRow() {
    return Row(
          children: [
            const Spacer(),
            Text(
              title,
              style: StyleManager.textStylePrimary24.copyWith(
                color: ColorsManager.white,
                fontSize: 15,
              ),
            ),
            const Spacer(),
            Text(
              "#138",
              style: StyleManager.textStylePrimary24.copyWith(
                color: ColorsManager.white,
                fontSize: 15,
              ),
            ),
          ],
        );
  }
}
