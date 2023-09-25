import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class DefaultFormField2 extends StatelessWidget {
  const DefaultFormField2({
    super.key,
    this.enabled = true,
    required this.controller,
    this.suffixIcon,
    this.textInputType = TextInputType.text,
    this.isPassword = false,
    this.onChange,
    this.validator,
    this.maxLines = 1, this.hintText,
    this.suffixPadding = 5.0,
  });

  final int maxLines;
  final double suffixPadding;
  final bool enabled;
  final bool? isPassword;
  final String? hintText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final void Function(String)? onChange;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        fontWeight: FontWeight.normal,
            color: ColorsManager.primary
      ),
      obscureText: isPassword!,
      obscuringCharacter: '●',
      cursorColor: ColorsManager.primary,
      enabled: enabled,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: StyleManager.textStyleDark24,
        suffixIcon: Padding(
          padding: EdgeInsetsDirectional.only(end:suffixPadding),
          child: suffixIcon,
        ),
          errorStyle: StyleManager.textStyleDark24.copyWith(color: ColorsManager.red),
          filled: true,
          fillColor: ColorsManager.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderManager.radius15,
            borderSide: const BorderSide(color: ColorsManager.white)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderManager.radius15,
              borderSide: const BorderSide(
                color:  ColorsManager.primary,
              )
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderManager.radius15,
              borderSide: const BorderSide(
                color:  ColorsManager.red,
              )
          ),
          errorBorder:  OutlineInputBorder(
              borderRadius: BorderManager.radius15,
              borderSide: const BorderSide(
                color:  ColorsManager.red,
              )
          ),
      ),
    );
  }
}

