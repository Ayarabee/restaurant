import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';
import '../../../../core/core_widgets/default_buttons/default_filled_button.dart';

class AddQuantityView extends StatelessWidget {
  const AddQuantityView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DefaultBody(
        title: "إضافة كمية",
        //sideBarBody: ,
        sideBarEmptyButton: DefaultButtonManager(text: 'الغاء', onTab: (){}),
        sideBarFilledButton: DefaultButtonManager(text: 'حفظ', onTab: (){}),
        sideBarTitleToDivider:30,
        body: SizedBox(),
      ),
    );
  }
}
