import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              height: 50,
              onPressed: () {
                Get.toNamed("/englishScreen");
              },
              color: Colors.green,
              child: const Text(
                "English",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
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
                Get.toNamed("/khmerScreen");
              },
              color: Colors.blueGrey,
              child: const Text(
                "ភាសាខ្មែរ",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "home".tr,
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              textColor: Colors.black,
              height: 50,
              onPressed: () {
                /// Have two languages
                ///
                GetStorage box = GetStorage();
                if (Get.locale == Locale("en")) {
                  Get.updateLocale(Locale("kh"));
                  box.write("lang", "kh");
                } else {
                  Get.updateLocale(Locale("en"));
                  box.write("lang", "en");
                }
              },
              color: Colors.red,
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
