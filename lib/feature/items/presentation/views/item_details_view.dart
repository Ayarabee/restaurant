import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';
import 'package:restaurant/feature/items/presentation/views/add_quantity_view.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/add_quantity/side_quantity_body.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/item_details/item_details_body.dart';
 import 'package:restaurant/feature/items/presentation/views/widgets/item_details/item_details_list_view.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DefaultBody(
        title: "التفاصيل",
        sideBarBody:const SideQuantityBody()  ,
        sideBarEmptyButton: DefaultButtonManager(text: 'إضافة', onTab: (){
            Get.to(()=> const AddQuantityView());
        }),
        sideBarFilledButton: DefaultButtonManager(text: 'حفظ', onTab: (){}),
        sideBarTitleToDivider:30,
        body: const ItemDetailsBody(),
      ),
    );
  }
}
