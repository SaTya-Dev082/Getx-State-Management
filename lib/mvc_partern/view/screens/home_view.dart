import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/mvc_partern/controller/home_controller.dart';
import 'package:learning_getx/mvc_partern/view/screens/first_screen.dart';
import 'package:learning_getx/mvc_partern/view/screens/second_screen.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final controller = Get.lazyPut(() => HomeController());
  final controller1 = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              height: 50,
              onPressed: () {
                Get.to(() => FirstScreenMVC());
              },
              color: Colors.blue,
              child: Text(
                "First Screen",
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
                Get.to(() => SecondScreenMVC());
              },
              color: Colors.green,
              child: Text(
                "Second Screen",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
