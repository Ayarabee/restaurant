import 'package:flutter/material.dart';
import 'package:restaurant/core/core_widgets/default_form/default_form_field.dart';
import 'package:restaurant/core/resources_manager/size_manager.dart';

import 'default_label.dart';

class DefaultForm extends StatelessWidget {
   const DefaultForm({
    super.key,
    required this.text,
    this.enabled = true,
    required this.controller,
    this.suffixIcon,
    this.textInputType = TextInputType.text,
    this.isPassword = false,
    this.readOnly = false,
    this.onChange,
    this.onTap,
    this.validator,
    this.maxLines = 1,
    this.suffixPadding = 5.0,
    this.hintText, this.isFillWhite=false,
   });

  final int maxLines;
  final bool enabled;
  final bool readOnly;
  final bool? isPassword;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final void Function(String)? onChange;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final String text;
  final double suffixPadding;
  final String? hintText;
   final bool? isFillWhite;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        DefaultLabel(
            text: text,

        ),
        const SizedBox(
          height: SizeManager.labelFormDivider,
        ),
        DefaultFormField(
          readOnly: readOnly,
          hintText: hintText,
          suffixPadding: suffixPadding,
          controller: controller,
          enabled: enabled,
          isFillWhite: isFillWhite,
          onChange: onChange,
          onTap: onTap,
          isPassword: isPassword,
          suffixIcon: suffixIcon,
          textInputType: textInputType,
          maxLines: maxLines,
          validator: validator,
        )
      ],
    );
  }
}
