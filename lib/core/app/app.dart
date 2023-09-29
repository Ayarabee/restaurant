import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/local_database/cache_data.dart';
import 'package:restaurant/core/localization/app_localization.dart';
import 'package:restaurant/core/resources_manager/constants_manager.dart';
import 'package:restaurant/feature/cashier/presentation/cubit/cashier_cubit.dart';
import 'package:restaurant/feature/home/presentation/cubit/home_cubit.dart';
import 'package:restaurant/feature/home/presentation/views/home_view.dart';
import 'package:restaurant/feature/items/presentation/manager/item_cubit.dart';
import 'package:restaurant/feature/items/presentation/manager/quantity_cubit.dart';

class MyApp extends StatelessWidget {


  const MyApp._internal();

  static const MyApp _instance = MyApp._internal(); // singleton
  factory MyApp() => _instance; // factory

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:
      [
        BlocProvider(create: (context) => CashierCubit()),
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => ItemCubit()),
        BlocProvider(create: (context) => QuantityCubit()),
      ],
      child: GetMaterialApp(
        title: ConstantsManager.appTitle,
        theme: ThemeData(
          fontFamily: ConstantsManager.fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        locale: Locale(CacheData.lang!),
        translations: AppLocalization(),
        home: const HomeView(),
      ),
    );
  }
}

