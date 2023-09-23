import 'package:get/get.dart';
import 'package:restaurant/core/local_database/cache_data.dart';
import 'package:restaurant/core/local_database/cache_helper.dart';

import '../local_database/cache_helper_keys.dart';
import 'ar.dart';
import 'en.dart';
import 'translation_key_manager.dart';

class AppLocalization implements Translations
{

  @override
  Map<String, Map<String, String>> get keys =>
      {
        CacheHelperKeys.keyAR : ar,
        CacheHelperKeys.keyEN : en
      };

  static Future setLanguage() async
  {
    CacheData.lang = await CacheHelper.getData(key: CacheHelperKeys.langKey);

    if (CacheData.lang == null) {
      await CacheHelper.saveData(key: CacheHelperKeys.langKey, value: CacheHelperKeys.keyAR);
      await Get.updateLocale(TranslationKeyManager.localeAR);
      CacheData.lang = CacheHelperKeys.keyAR;
    }
  }

}