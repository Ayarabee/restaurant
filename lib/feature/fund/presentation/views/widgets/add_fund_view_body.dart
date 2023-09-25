
import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';

import 'add_fund_body_items.dart';

class FundsViewBody extends StatelessWidget {
  const FundsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: "إضافة للصندوق",
      sideBarEmptyButton: DefaultButtonManager(text: 'إضافة', onTab: () { }),
      sideBarFilledButton:DefaultButtonManager(text: 'حفظ', onTab: () { }),
      body:const AddFundBodyItems(),
    );
  }
}
