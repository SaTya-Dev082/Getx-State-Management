import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/test_route/home_screen.dart';

class ThirdScreen3 extends StatelessWidget {
  const ThirdScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third Screen"), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              height: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              onPressed: () {
                Get.offAll(HomeScreenTest());
              },
              color: Colors.teal,
              child: const Text(
                "Home Screen",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
