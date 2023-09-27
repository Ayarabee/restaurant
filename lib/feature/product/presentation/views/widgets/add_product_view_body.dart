
import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';

import 'product_body_items.dart';

class AddProductViewBody extends StatelessWidget {
  const AddProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: "إضافة منتج",
      sideBarEmptyButton: DefaultButtonManager(text: 'إضافة', onTab: () { }),
      sideBarFilledButton:DefaultButtonManager(text: 'حفظ', onTab: () { }),
      body: const ProductBodyItems(),
    );
  }
}
