import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/local_database/cache_data.dart';
import 'package:restaurant/core/localization/app_localization.dart';
import 'package:restaurant/core/resources_manager/constants_manager.dart';

import '../../feature/items/presentation/views/add_item_view.dart';
 
class MyApp extends StatelessWidget {


  const MyApp._internal();

  static const MyApp _instance = MyApp._internal(); // singleton
  factory MyApp() => _instance; // factory

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: ConstantsManager.appTitle,
      theme: ThemeData(
        fontFamily: ConstantsManager.fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      locale: Locale(CacheData.lang!),
      translations: AppLocalization(),
      //home: const AddItemView(),
    );
  }
}

