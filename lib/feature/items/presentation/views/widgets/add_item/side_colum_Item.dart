import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant/core/core_widgets/default_body/default_divider.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_empty_button.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_filled_button.dart';
import '../../../../../../core/resources_manager/assets_manager.dart';

class SideColumItem extends StatelessWidget {
  const SideColumItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 10,),
        Center(
            child: SvgPicture.asset(
              AssetsManager.addPhoto,
              height: 100,
              width: 100,
            ),
        ),
        const SizedBox(height: 220,),
        DefaultFilledButton(
            onPressed:  (){},
            text: 'حفظ'
        ),
        const DefaultDivider(
          padding: EdgeInsets.symmetric(
              vertical:10,
          ),
        ),
        DefaultEmptyButton(
            onPressed:  (){},
            text: 'إلغاء',
        ),
      ],
    );
  }
}
