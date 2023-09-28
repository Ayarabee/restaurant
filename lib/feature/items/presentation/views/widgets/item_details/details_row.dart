import 'package:flutter/material.dart';

import '../../../../../../core/resources_manager/colors_manager.dart';
import '../../../../../../core/resources_manager/style_manager.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0,left: 18.0),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.primaryLight2,
          borderRadius: BorderRadius.circular(5),
        ),
        padding:const EdgeInsets.only(
            top: 5.0,
            bottom: 5.0,
          ),
        child:   Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  '15/10/2024',
                  style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal,
                      color: ColorsManager.primary
                  ),
                ),
              ),
            ),
             Expanded(
               child: Center(
                 child: Text(
                  '7',
                  style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal
                  ),
            ),
               ),
             ),
             Expanded(
               child: Center(
                 child: Text(
                  '0',
                  style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal
                  ),
            ),
               ),
             ),
             Expanded(
               child: Center(
                 child: Text(
                  '22',
                  style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal
                  ),
            ),
               ),
             ),
             Expanded(
               child: Center(
                 child: Text(
                  'محمد',
                  style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal,
                      color: ColorsManager.primary
                  ),
            ),
               ),
             ),
             Expanded(
               child: Center(
                 child: Text(
                  'لا',
                  style: StyleManager.textStyleDark14.copyWith(
                      fontWeight: FontWeight.normal
                  ),
            ),
               ),
             ),
          ],
        ),
      ),
    );
  }
}
