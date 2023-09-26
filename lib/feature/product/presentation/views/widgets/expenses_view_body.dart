import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';
import 'package:restaurant/feature/product/data/models/items_table_model.dart';
import 'package:restaurant/feature/product/presentation/views/widgets/shared_side_bar_body.dart';

import 'purchases_body_items.dart';

class ExpensesViewBody extends StatefulWidget {
  const ExpensesViewBody({super.key});

  @override
  State<ExpensesViewBody> createState() => _ExpensesViewBodyState();
}

class _ExpensesViewBodyState extends State<ExpensesViewBody> {
  var invoiceDateController = TextEditingController();
  var productNameController = TextEditingController();
  var totalController = TextEditingController();
  List<ItemsTableMode> items = [
    ItemsTableMode("كبريت", "10", "علبة", "5.00"),
    ItemsTableMode("عيش", "10", "كيس", "200.00"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: "المصروفات اليومية",
      sideBarEmptyButton: DefaultButtonManager(text: 'إضافة', onTab: () {}),
      sideBarFilledButton: DefaultButtonManager(text: 'حفظ', onTab: () {}),
      sideBarBody: SharedSideBarBody(
        invoiceDateController: invoiceDateController,
        productNameController: productNameController,
        totalController: totalController,
      ),
      body: PurchasesBodyItems(
        items: items,
      ),
    );
  }
}
