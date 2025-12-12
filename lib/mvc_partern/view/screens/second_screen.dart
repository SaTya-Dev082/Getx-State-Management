import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/mvc_partern/controller/home_controller.dart';
import 'package:learning_getx/mvc_partern/view/screens/counter_screen.dart';

class SecondScreenMVC extends StatelessWidget {
  SecondScreenMVC({super.key});
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen"), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<HomeController>(
            init: HomeController(),
            builder:
                (controller) => Text(
                  controller.name,
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
          ),
        ],
      ),
    );
  }
}
