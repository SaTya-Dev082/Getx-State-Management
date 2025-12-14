import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learning_getx/mvc_partern/localizations/controllers/local_service_controller.dart';

class LanguageMoreView extends StatelessWidget {
  const LanguageMoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language Screen", textAlign: TextAlign.center),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: MaterialButton(
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(25),
          //     ),
          //     height: 50,
          //     onPressed: () {
          //       Get.toNamed("/englishScreen");
          //       LocaleService.saveLocale(Locale("en"));
          //     },
          //     color: Colors.green,
          //     child: const Text(
          //       "English",
          //       style: TextStyle(fontSize: 18, color: Colors.black),
          //     ),
          //   ),
          // ),
          // SizedBox(height: 10),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: MaterialButton(
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(25),
          //     ),
          //     height: 50,
          //     onPressed: () {
          //       Get.toNamed("/khmerScreen");
          //       LocaleService.saveLocale(Locale("kh"));
          //     },
          //     color: Colors.blueGrey,
          //     child: const Text(
          //       "ភាសាខ្មែរ",
          //       style: TextStyle(fontSize: 18, color: Colors.black),
          //     ),
          //   ),
          // ),
          // SizedBox(height: 10),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: MaterialButton(
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(25),
          //     ),
          //     height: 50,
          //     onPressed: () {
          //       Get.toNamed("/chineseScreen");
          //       LocaleService.saveLocale(Locale("zh"));
          //     },
          //     color: Colors.red,
          //     child: const Text(
          //       "中文",
          //       style: TextStyle(fontSize: 18, color: Colors.black),
          //     ),
          //   ),
          // ),
          // SizedBox(height: 20),
          Text(
            "home".tr,
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              height: 50,
              onPressed: () {
                Get.toNamed("/changeLanguage");
                // LocaleService.saveLocale(Locale("zh"));
              },
              color: Colors.blue,
              child: Text(
                "language".tr,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
