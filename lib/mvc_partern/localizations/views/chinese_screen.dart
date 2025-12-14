import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChineseScreen extends StatelessWidget {
  const ChineseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("中文"), centerTitle: true),
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
