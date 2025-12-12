import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/mvc_partern/controller/home_controller.dart';

class FirstScreenMVC extends StatelessWidget {
  FirstScreenMVC({super.key});

  /// DI = Dependency Injector
  // Get.put(controller, permanent: true); // permanent: true => not remove the page
  final controller = Get.put(HomeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen"), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<HomeController>(
            // init: HomeController(),
            builder:
                (controller) => Text(
                  controller.name,
                  style: TextStyle(fontSize: 30, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              height: 50,
              onPressed: () {
                controller.displayName();
              },
              color: Colors.blue,
              child: Text(
                "Display Name",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
