import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KhmerScreen extends StatelessWidget {
  const KhmerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ភាសាខ្មែរ"), centerTitle: true),
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
