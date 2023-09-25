import 'package:flutter/material.dart';

abstract class BorderManager {
  static BorderRadius radius3 = BorderRadius.circular(3.0);
  static BorderRadius radius5 = BorderRadius.circular(5.0);
  static BorderRadius radius10 = BorderRadius.circular(10.0);
  static BorderRadius radius15 = BorderRadius.circular(15.0);
  static BorderRadiusDirectional sideBar = const BorderRadiusDirectional.only(
    topEnd: Radius.circular(15.0),
    bottomEnd: Radius.circular(15.0),
  );
}

abstract class SizeManager {
  static const double labelFormDivider = 10;
  static const double s40 = 40;
  static const double sideBarTitleToDivider = 30;
}

abstract class PaddingManager {
  static const EdgeInsetsGeometry divider =
      EdgeInsets.symmetric(horizontal: 25);
  static EdgeInsetsGeometry fromFieldMargin = const EdgeInsets.all(20.0).copyWith(
    top: 0.0,
  );
  static const EdgeInsetsGeometry bodyPadding = EdgeInsets.only(
    right: 15.0,
    left: 15.0, top: 10,
  );
  static const EdgeInsetsGeometry itemDetailsPadding = EdgeInsets.symmetric(
    horizontal: 13.0,
    vertical: 10,
  );
  static const EdgeInsetsGeometry fromFieldPadding =
      EdgeInsets.symmetric(horizontal: 23, vertical: 28);
  static const EdgeInsetsGeometry navBarPadding = EdgeInsets.all(15);
  static const EdgeInsetsGeometry sideBar =
      EdgeInsets.symmetric(horizontal: 15, vertical: 20);
}
