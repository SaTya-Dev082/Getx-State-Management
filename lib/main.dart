import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/mvc_partern/binding/home_binding.dart';
import 'package:learning_getx/mvc_partern/view/screens/home_view.dart';
// import 'package:learning_getx/routes/first_screen.dart';
// import 'package:learning_getx/routes/home_screen.dart';
// import 'package:learning_getx/routes/second_screen.dart';
// import 'package:learning_getx/routes/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: '/',
      // getPages: [
      //   GetPage(
      //     name: '/',
      //     page: () => FirstScreen(),
      //     transition: Transition.rightToLeft,
      //   ),
      //   GetPage(
      //     name: '/firstPage',
      //     page: () => FirstScreen(),
      //     transition: Transition.rightToLeft,
      //   ),
      //   GetPage(
      //     name: '/secondPage',
      //     page: () => SecondScreen(),
      //     transition: Transition.rightToLeft,
      //   ),
      //   GetPage(
      //     name: '/thirdPage',
      //     page: () => ThirdScreen(),
      //     transition: Transition.rightToLeft,
      //   ),
      // ],
      debugShowCheckedModeBanner: false,
      // home: const HomeScreen(), // Home Route
      home: HomeView(),
      initialBinding: HomeBinding(),
    );
  }
}
