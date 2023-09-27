import 'package:flutter/material.dart';

import '../../../../../../core/resources_manager/style_manager.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Center(
            child: Text(
              'التاريخ',
              style: StyleManager.textStyleDark18,
            ),
          ),
        ),
         Expanded(
           child: Center(
             child: Text(
              'الوارد',
              style: StyleManager.textStyleDark18,
        ),
           ),
         ),
         Expanded(
          child: Center(
            child: Text(
              'الخارج',
              style: StyleManager.textStyleDark18,
            ),
          ),
        ),
         Expanded(
          child: Center(
            child: Text(
              'الرصيد',
              style: StyleManager.textStyleDark18,
            ),
          ),
        ),
         Expanded(
          child: Center(
            child: Text(
              'المستلم',
              style: StyleManager.textStyleDark18,
            ),
          ),
        ),
         Expanded(
          child: Center(
            child: Text(
              'الملاحظات',
              style: StyleManager.textStyleDark18,
            ),
          ),
        ),
      ],
    );
  }
}
