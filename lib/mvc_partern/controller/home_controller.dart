import 'package:get/get.dart';

class HomeController extends GetxController {
  String title = "Home Controller";

  int index = 0;
  void increaseIndex() {
    index++;
    update();
  }

  String name = "";
  void displayName() {
    name = "Satya";
    update();
  }
}
