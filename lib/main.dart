
import 'package:flutter/material.dart';
import 'package:restaurant/core/local_database/cache_helper.dart';

import 'core/app/app.dart';
import 'core/localization/app_localization.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await AppLocalization.setLanguage();
  runApp(MyApp());
}