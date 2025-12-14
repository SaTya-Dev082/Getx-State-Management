import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnglishScreen extends StatelessWidget {
  const EnglishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("English"), centerTitle: true),
      body: Column(
        children: [
          Text(
            "home".tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
