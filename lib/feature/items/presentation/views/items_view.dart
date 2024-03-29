import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';
import 'package:restaurant/feature/items/presentation/views/add_item_view.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/items/quick_item_list_view.dart';
 import 'package:restaurant/feature/items/presentation/views/widgets/items/side_quick_items_body.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DefaultBody(
        title: "جرد سريع",
        sideBarBody:const SideQuickItemsBody()  ,
        sideBarEmptyButton: DefaultButtonManager(text: 'طباعة', onTab: (){}),
        sideBarFilledButton: DefaultButtonManager(text: 'إضافة', onTab: (){
            Get.to(()=> const AddItemView());
        }),
        sideBarTitleToDivider:30,
        body: const QuickOItemListView(),
      ),
    );
  }
}
