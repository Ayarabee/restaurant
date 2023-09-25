import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/add_item/main_colum_item_body.dart';
import 'package:restaurant/feature/items/presentation/views/widgets/add_item/side_colum_Item.dart';

class AddItemView extends StatelessWidget {
  const AddItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: DefaultBody(
        title: "إضافة صنف",
        sideBarBody: SideColumItem(),
        sideBarTitleToDivider:30,
        body: SingleChildScrollView(
            child: MainColumItemBody(),
        ),
      ),
    );
  }
}
