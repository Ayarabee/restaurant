
import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';

import 'add_fund_body_items.dart';

class AddFundsViewBody extends StatelessWidget {
  const AddFundsViewBody({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: title,
      sideBarEmptyButton: DefaultButtonManager(text: 'إضافة', onTab: () { }),
      sideBarFilledButton:DefaultButtonManager(text: 'حفظ', onTab: () { }),
      body:const AddFundBodyItems(),
    );
  }
}
