import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';

import 'employees_body_item.dart';

class EmployeesViewBody extends StatelessWidget {
  const EmployeesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      showNavBar: false,
      title: "قائمة العمال",
      sideBarEmptyButton: DefaultButtonManager(text: 'إضافة', onTab: () { }),
      sideBarFilledButton:DefaultButtonManager(text: 'حفظ', onTab: () { }),
      body:const EmployeesBodyItems(),
    );
  }
}
