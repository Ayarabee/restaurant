
import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';
import 'package:restaurant/feature/product/data/models/items_table_model.dart';

import 'purchases_body_items.dart';
import 'shared_side_bar_body.dart';

class PurchasesViewBody extends StatefulWidget {
  const PurchasesViewBody({super.key});

  @override
  State<PurchasesViewBody> createState() => _PurchasesViewBodyState();
}

class _PurchasesViewBodyState extends State<PurchasesViewBody> {
  var invoiceDateController = TextEditingController();
  var productNameController = TextEditingController();
  var totalController = TextEditingController();
  List<ItemsTableMode>items=[
    ItemsTableMode("سكر", "10", "طرد", "2500"),
  ];
  @override
  Widget build(BuildContext context) {

    return DefaultBody(
      title: "المشتريات",
      sideBarEmptyButton: DefaultButtonManager(text: 'إضافة', onTab: () { }),
      sideBarFilledButton:DefaultButtonManager(text: 'حفظ', onTab: () { }),
      sideBarBody: SharedSideBarBody(
        invoiceDateController: invoiceDateController,
        productNameController: productNameController,
        totalController: totalController,
      ),
      body: PurchasesBodyItems(items: items,),
    );
  }
}
