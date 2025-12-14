import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/setting_language_controller.dart';
import '../model/language_model.dart';

class ChangeLanguageView extends StatelessWidget {
  ChangeLanguageView({super.key});
  final controller = Get.find<SettingsController>();

  final languages = [
    Language('English', const Locale('en')),
    Language('ភាសាខ្មែរ', const Locale('kh')),
    Language('中文', const Locale('zh')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Language"), centerTitle: true),
      // body: Obx(
      //   () => Column(
      //     children: [
      //       RadioListTile<Locale>(
      //         title: const Text('English'),
      //         value: const Locale('en'),
      //         groupValue: controller.currentLocale.value,
      //         onChanged: (val) => controller.changeLanguage(val!),
      //       ),
      //       RadioListTile<Locale>(
      //         title: const Text('ភាសាខ្មែរ'),
      //         value: const Locale('kh'),
      //         groupValue: controller.currentLocale.value,
      //         onChanged: (val) => controller.changeLanguage(val!),
      //       ),
      //       RadioListTile<Locale>(
      //         title: const Text('中文'),
      //         value: const Locale('zh'),
      //         groupValue: controller.currentLocale.value,
      //         onChanged: (val) => controller.changeLanguage(val!),
      //       ),
      //     ],
      //   ),
      // ),
      body: Obx(
        () => Column(
          children: [
            RadioListTile<Locale>(
              title: const Text('English'),
              value: const Locale('en', 'US'),
              groupValue: controller.currentLocale.value,
              onChanged: (val) => controller.changeLanguage(val!),
            ),
            RadioListTile<Locale>(
              title: const Text('ភាសាខ្មែរ'),
              value: const Locale('kh', 'KH'),
              groupValue: controller.currentLocale.value,
              onChanged: (val) => controller.changeLanguage(val!),
            ),
            RadioListTile<Locale>(
              title: const Text('中文'),
              value: const Locale('zh', 'CN'),
              groupValue: controller.currentLocale.value,
              onChanged: (val) => controller.changeLanguage(val!),
            ),
          ],
        ),
      ),
    );
  }
}
