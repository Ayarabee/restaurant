import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/add_quantity/add_quantity_body.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/add_quantity/side_quantity_body.dart';

class AddQuantityView extends StatelessWidget {
  const AddQuantityView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DefaultBody(
        title: "إضافة كمية",
        sideBarBody:const SideQuantityBody()  ,
         sideBarEmptyButton: DefaultButtonManager(text: 'الغاء', onTab: (){}),
        sideBarFilledButton: DefaultButtonManager(text: 'حفظ', onTab: (){}),
        sideBarTitleToDivider:30,
        body: const AddQuantityBody(),
      ),
    );
  }
}
