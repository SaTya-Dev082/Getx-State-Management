import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/routes/home_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

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
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomeScreen()),
                // );
                Get.offAllNamed("/");
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
