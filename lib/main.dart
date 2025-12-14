import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learning_getx/mvc_partern/binding/home_binding.dart';
import 'package:learning_getx/mvc_partern/localizations/controllers/app_localization_controller.dart';
import 'package:learning_getx/mvc_partern/localizations/controllers/local_service_controller.dart';
import 'package:learning_getx/mvc_partern/localizations/views/chinese_screen.dart';
import 'package:learning_getx/mvc_partern/localizations/views/english_screen.dart';
import 'package:learning_getx/mvc_partern/localizations/views/khmer_screen.dart';
import 'package:learning_getx/mvc_partern/localizations/views/language_view.dart';
import 'package:learning_getx/mvc_partern/view/screens/home_view.dart';
import 'package:learning_getx/routes/first_screen.dart';
import 'package:learning_getx/routes/home_screen.dart';
import 'package:learning_getx/routes/second_screen.dart';
import 'package:learning_getx/routes/third_screen.dart';
import 'package:learning_getx/test_route/home_screen.dart';

import 'mvc_partern/localizations/controllers/setting_language_controller.dart';
import 'mvc_partern/localizations/views/change_language_view.dart';
import 'mvc_partern/localizations/views/language_more_view.dart';
// import 'package:learning_getx/routes/first_screen.dart';
// import 'package:learning_getx/routes/home_screen.dart';
// import 'package:learning_getx/routes/second_screen.dart';
// import 'package:learning_getx/routes/third_screen.dart';

void main() async {
  await GetStorage.init();
  Get.put(SettingsController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(LocaleService.getLocale());
    return GetMaterialApp(
      /// Localization two languages
      /*locale:
          (box.read("lang") == null)
              ? const Locale("en")
              : Locale(box.read("lang")),
      */
      translations: AppLocalizationController(),
      locale: Get.find<SettingsController>().currentLocale.value,
      fallbackLocale: const Locale("en", "US"),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: '/',
          page: () => LanguageMoreView(),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/englishScreen',
          page: () => EnglishScreen(),
          // transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/khmerScreen',
          page: () => KhmerScreen(),
          // transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/chineseScreen',
          page: () => ChineseScreen(),
          // transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/changeLanguage',
          page: () => ChangeLanguageView(),
          // transition: Transition.rightToLeft,
        ),
      ],

      // Dependency Injection
      /*
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/firstPage',
          page: () => FirstScreen(),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/secondPage',
          page: () => SecondScreen(),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/thirdPage',
          page: () => ThirdScreen(),
          transition: Transition.rightToLeft,
        ),
      ],*/
      debugShowCheckedModeBanner: false,
      // home: const HomeScreen(), // Home Route
      // home: HomeScreenTest(),
      // initialBinding: HomeBinding(),
    );
  }
}
