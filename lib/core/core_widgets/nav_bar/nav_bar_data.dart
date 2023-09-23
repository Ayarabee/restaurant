import 'package:restaurant/core/resources_manager/assets_manager.dart';

abstract class NavBarData{
  static const List<String> listOfIcons = [
    AssetsManager.cashier,
    AssetsManager.kitchen,
    AssetsManager.stores,
    AssetsManager.bills,
    AssetsManager.attendLeave,
    AssetsManager.logout,
  ];

  static const List<String> listOfStrings = [
    'الكاشير',
    'المطبخ',
    'المخازن',
    'الفواتير',
    'حضور وانصراف',
    'تسجيل خروج',
  ];
}