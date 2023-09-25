import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_body/default_body.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_button_manager.dart';
import 'package:restaurant/core/core_widgets/default_form/default_from.dart';
import 'package:restaurant/core/core_widgets/default_form/default_label.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';

import '../../../../core/core_widgets/switch_check_box/default_switch.dart';

//66
class AddUserView extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController accountController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AddUserView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultBody(
          sideBarBody: const SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
          title: 'إضافة مستخدم',
          sideBarFilledButton: DefaultButtonManager(text: 'حفظ', onTab: () {}),
          sideBarEmptyButton: DefaultButtonManager(text: 'إلغاء', onTab: () {}),
          body: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * .02,
              right: MediaQuery.of(context).size.width * .09,
              left: MediaQuery.of(context).size.width * .09,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultForm(
                  text: 'الاسم',
                  controller: nameController,
                ),
                const SizedBox(
                  height: 8,
                ),
                DefaultForm(
                  text: 'الحساب/البريد الشخصي',
                  controller: accountController,
                ),
                const SizedBox(
                  height: 8,
                ),
                DefaultForm(
                  text: 'كلمة السر',
                  controller: passwordController,
                  suffixIcon: const Icon(
                    Icons.remove_red_eye,
                    color: ColorsManager.primary,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                DefaultLabel(
                  text: 'الصلاحيات',
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .07,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            DefaultSwitch(
                                value: false,
                                title: 'كاشير',
                                onChanged: (onChanged) {}),
                            DefaultSwitch(
                                value: false,
                                title: 'المطبخ',
                                onChanged: (onChanged) {}),
                            DefaultSwitch(
                                value: false,
                                title: 'المخازن',
                                onChanged: (onChanged) {}),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            DefaultSwitch(
                                value: false,
                                title: 'الفواتير',
                                onChanged: (onChanged) {}),
                            DefaultSwitch(
                                value: false,
                                title: 'الصلاحيات',
                                onChanged: (onChanged) {}),
                            DefaultSwitch(
                                value: false,
                                title: 'الصلاحيات',
                                onChanged: (onChanged) {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
