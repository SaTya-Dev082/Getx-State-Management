import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnglishScreen extends StatelessWidget {
  const EnglishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("English"), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 0,
        children: [
          Text(
            "home".tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          Text(
            "setting".tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          Text(
            "computer".tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          Text(
            "data".tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          Text(
            "video".tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          Text(
            "picture".tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
