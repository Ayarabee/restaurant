import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class CashierFormField extends StatelessWidget {
  const CashierFormField({
    super.key,
    this.enabled = true,
    required this.controller,
    this.prefixIcon,
    this.textInputType = TextInputType.text,
    this.isPassword = false,
    this.onChange,
    this.validator,
    this.onTap,
    this.maxLines = 1, this.hintText,
    this.suffixPadding = 5.0,
  });

  final int maxLines;
  final double suffixPadding;
  final bool enabled;
  final bool? isPassword;
  final String? hintText;
  final TextEditingController? controller;
  final String? prefixIcon;
  final TextInputType textInputType;
  final void Function(String)? onChange;
  final String? Function(String?)? validator;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: InkWell(
        onTap: onTap,
        child: TextFormField(
          validator: validator ??
                  (value) {
                if (value!.isEmpty) {
                  return 'لا يجب ان يكون فارغا';
                }
                return null;
              },
          keyboardType: textInputType,
          controller: controller,
          onChanged: onChange,
          style: StyleManager.textStyleDark14.copyWith(
              fontWeight: FontWeight.w400,
              color: ColorsManager.black,
            height: 1.7
          ),
          obscureText: isPassword!,
          obscuringCharacter: '●',
          cursorColor: ColorsManager.primary,
          enabled: enabled,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: StyleManager.textStyle14.copyWith(color: ColorsManager.black, fontWeight: FontWeight.w400),
            //prefixIcon: (prefixIcon),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              minWidth: 20
            ),
            prefixIcon: prefixIcon==null ? null :Padding(
              padding: const EdgeInsetsDirectional.only(start: 5.0, end: 5),
              child: SvgPicture.asset(prefixIcon!,),
            ),
            errorStyle: StyleManager.textStyleDark24.copyWith(color: ColorsManager.red),
            contentPadding: EdgeInsets.zero,
            disabledBorder:  OutlineInputBorder(
                borderRadius: BorderManager.radius10,
                borderSide: BorderSide(color: ColorsManager.blackOpacity)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderManager.radius10,
                borderSide: BorderSide(color: ColorsManager.blackOpacity)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderManager.radius10,
                borderSide: BorderSide(
                  color:  ColorsManager.blackOpacity,
                )
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderManager.radius10,
                borderSide: const BorderSide(
                  color:  ColorsManager.red,
                )
            ),
            errorBorder:  OutlineInputBorder(
                borderRadius: BorderManager.radius10,
                borderSide: const BorderSide(
                  color:  ColorsManager.red,
                )
            ),
          ),
        ),
      ),
    );
  }
}

