import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_buttons/default_filled_button.dart';
import 'package:restaurant/core/core_widgets/default_form/default_form_field.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

TextEditingController login = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.primaryLight,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * .6,
            height: MediaQuery.of(context).size.height * .750,
            decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * .08,
                      top: MediaQuery.of(context).size.height * .02,
                    ),
                    child: const Text("تسجيل الدخول",
                        style: TextStyle(
                          fontSize: 30,
                          color: ColorsManager.primary,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Tajawal',
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.height * .1,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "الحساب الشخصي",
                        style: StyleManager.textStyleDark24,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      DefaultFormField(
                        controller: login,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "كلمة السر",
                        style: StyleManager.textStyleDark24,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      DefaultFormField(
                        controller: passwordController,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove_red_eye,
                            color: ColorsManager.primary,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * .1),
                        child: DefaultFilledButton(
                          onPressed: () {},
                          text: 'تسجيل دخول',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
