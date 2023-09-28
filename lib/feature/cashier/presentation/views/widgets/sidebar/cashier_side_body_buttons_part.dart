import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_filled_button.dart';

class CashierSideBarBodyButtonsPart extends StatelessWidget {
  const CashierSideBarBodyButtonsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        Row(
          children:
          [
            Expanded(
                child: DefaultFilledButton(
                  isSmall: true,
                  onPressed: (){},
                  text: 'انهاء الطلب',
                )
            ),
            SizedBox(width: 20,),
            Expanded(
                child: DefaultFilledButton(
                  isSmall: true,
                  onPressed: (){},
                  text: 'انهاء الطلب',
                )
            ),
          ],
        ),
        const SizedBox(height: 8,),
        Row(
          children:
          [
            Expanded(
                child: DefaultFilledButton(
                  isSmall: true,
                  onPressed: (){},
                  text: 'انهاء الطلب',
                )
            ),
            SizedBox(width: 20,),
            Expanded(
                child: DefaultFilledButton(
                  isSmall: true,
                  onPressed: (){},
                  text: 'انهاء الطلب',
                )
            ),
          ],
        )
      ],
    );
  }
}
