import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class BuildEmployeesContainerChild extends StatelessWidget {
  const BuildEmployeesContainerChild({super.key, required this.itemWidth});
final double itemWidth;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              AssetsManager.more,
            ),
            const Spacer(),
            Text(
              "11:02  AM",
              style: StyleManager.textStyle16.copyWith(
                fontWeight: FontWeight.w600,
                color: ColorsManager.primary,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Image.asset(
              AssetsManager.deleteMe2,
              fit: BoxFit.fill,
              height: 100,
              width: 80,
            ),
            const SizedBox(
              width: 13,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.person_outline_outlined,
                      color: ColorsManager.primary,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "محمد احمد",
                      style: StyleManager.textStyle16.copyWith(
                        color: ColorsManager.black,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.phone_in_talk_outlined,
                      color: ColorsManager.primary,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "010123456789",
                      style: StyleManager.textStyle16.copyWith(
                        color: ColorsManager.black,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.attach_money_outlined,
                      color: ColorsManager.primary,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "سلف اليوم",
                      style: StyleManager.textStyle16.copyWith(
                        color: ColorsManager.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      width: itemWidth / 3.3,
                    ),
                    Text(
                      "30.0",
                      style: StyleManager.textStyle16.copyWith(
                        color: ColorsManager.primary,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.attach_money_outlined,
                      color: ColorsManager.primary,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "سلف الشهر",
                      style: StyleManager.textStyle16.copyWith(
                        color: ColorsManager.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      width: itemWidth / 4.4,
                    ),
                    Text(
                      "1650.0",
                      style: StyleManager.textStyle16.copyWith(
                        color: ColorsManager.primary,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "تفاصيل السلف خلال الشهر",
          style: StyleManager.textStyleDark14.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Row(
            children: [
              Text(
                "التاريخ",
                style: StyleManager.textStyleDark14.copyWith(
                    fontWeight: FontWeight.normal,
                    color: ColorsManager.primary),
              ),
              const Spacer(),
              Text(
                "المبلغ",
                style: StyleManager.textStyleDark14.copyWith(
                    fontWeight: FontWeight.normal,
                    color: ColorsManager.primary),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15,),
        SizedBox(
          height: 150,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            itemBuilder: (context,index)=> Row(
              children: [
                Text(
                  "15/10/2024",
                  style: StyleManager.textStyleDark14.copyWith(
                    fontWeight: FontWeight.normal,),
                ),
                const Spacer(),
                Text(
                  "30.00",
                  style: StyleManager.textStyleDark14.copyWith(
                    fontWeight: FontWeight.normal,),
                ),
              ],
            ),
            separatorBuilder: (context,index)=>const SizedBox(height: 15,),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
