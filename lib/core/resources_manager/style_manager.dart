import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';

abstract class StyleManager {
  // title
  static const textStyle36 = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  // subtitle, form field, (switch, check box title)
  static const textStyleDark24 = TextStyle(
    fontSize: 24,
    color: ColorsManager.black,
  );

  // kitchen order type price
  static const textStylePrimary24 = TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold, color: ColorsManager.primary);

  // kitchen order type title
  static const textStyle32 = TextStyle(
      fontSize: 32, fontWeight: FontWeight.bold, color: ColorsManager.white);

  // button text light
  static const textStyleLight30 = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: ColorsManager.white);

  // button text dark
  static const textStyleDark30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  // Nav bar text
  static const textStyleDark18 =
      TextStyle(fontSize: 18, color: ColorsManager.black);

  // kitchen order type data
  static const textStyleLight18 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: ColorsManager.white);

  static const textStyleDark16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
      fontWeight: FontWeight.bold,
    color: ColorsManager.white

  );

  // cashier items text //Real button text
  static const textStyle14 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.bold, color: ColorsManager.white);

  //Real button text
  static const textStyleDark14 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: ColorsManager.black
  );

  // kitchen order items, employees data
  static const textStyle20 = TextStyle(
    fontSize: 20,
    color: ColorsManager.black,
  );

  static TextStyle textStyleDark20 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: ColorsManager.black.withOpacity(0.65));
}
