import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class ItemDetailsBody extends StatelessWidget {
  const ItemDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        vertical: 20,
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,
            ),
            child: Row(
              children: [
                Text(
                  'التاريخ',
                  style: StyleManager.textStyleDark18,
                ),
                Spacer(),
                Text(
                  'الوارد',
                  style: StyleManager.textStyleDark18,
                ),
                Spacer(),
                Text(
                  'الخارج',
                  style: StyleManager.textStyleDark18,
                ),
                Spacer(),
                Text(
                  'الرصيد',
                  style: StyleManager.textStyleDark18,
                ),
                Spacer(),
                Text(
                  'المستلم',
                  style: StyleManager.textStyleDark18,
                ),
                Spacer(),
                Text(
                  'الملاحظات',
                  style: StyleManager.textStyleDark18,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(top: 12.0,left: 18.0),
            child: Container(
              decoration: BoxDecoration(
                color: ColorsManager.primaryLight2,
                borderRadius: BorderRadius.circular(5),
              ),
              padding:const EdgeInsets.only(
                  top: 5.0,
                bottom: 5.0,
                right: 5,
                left: 30
              ),
              child:   Row(
                children: [
                  Text(
                    '15/10/2024',
                    style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal,
                        color: ColorsManager.primary
                    ),
                  ),
                  const SizedBox(width: 90,),
                  Text(
                    '7',
                    style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '0',
                    style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '22',
                    style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'محمد',
                    style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal,
                      color: ColorsManager.primary
                    ),
                  ),
                  const SizedBox(width: 130,),
                  Text(
                    'لا',
                    style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0,left: 18.0),
            child: Container(
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
              ),
              padding:const EdgeInsets.only(
                  top: 5.0,
                bottom: 5.0,
                right: 5,
                left: 30
              ),
              child:   Row(
                children: [
                  Text(
                    '15/10/2024',
                    style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal,
                        color: ColorsManager.primary
                    ),
                  ),
                  const SizedBox(width: 90,),
                  Text(
                    '7',
                    style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '0',
                    style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '22',
                    style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'محمد',
                    style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal,
                      color: ColorsManager.primary
                    ),
                  ),
                  const SizedBox(width: 130,),
                  Text(
                    'لا',
                    style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),
            ),
          ),
          ],
      ),
    );
  }
}
